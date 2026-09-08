/*1.  Provide the list of markets in which customer  "Atliq  Exclusive"  operates its 
business in the  APAC  region */

select  distinct(market) from dim_customer
where customer="Atliq Exclusive" and region="APAC";

/* 2. What is the percentage of unique product increase in 2021 vs. 2020? */

SELECT x.A AS unique_product_2020, y.B AS unique_products_2021, ROUND((B-A)*100/A, 2) AS percentage_chg
FROM
     (
      (SELECT COUNT(DISTINCT(product_code)) AS A FROM fact_sales_monthly
      WHERE fiscal_year = 2020) x,
      (SELECT COUNT(DISTINCT(product_code)) AS B FROM fact_sales_monthly
      WHERE fiscal_year = 2021) y
	 )

/*3. Provide a report with all the unique product counts for each  segment  and 
sort them in descending order of product counts */


select distinct(segment) as unique_segments ,count(product) as product_count from dim_product
group by unique_segments
order by product_count desc;

/*4.  Which segment had the most increase in unique products in 
2021 vs 2020? */

with table1 as (
	select segment,count(distinct(p.product_code)) as product_count_2020 
	from dim_product p
	join fact_sales_monthly f on
	p.product_code=f.product_code
	where f.fiscal_year=2020
	group by segment
	order by product_count_2020
),
table2 as (
	select p.segment,count(distinct(p.product_code)) as product_count_2021
	from dim_product p
	join fact_sales_monthly f on
	p.product_code=f.product_code
	where f.fiscal_year=2021
	group by p.segment
	order by product_count_2021
)

select table1.segment,table1.product_count_2020,table2.product_count_2021,
abs(product_count_2020-product_count_2021) as diffrence from
table1
cross join table2 on table1.segment=table2.segment
group by table1.segment
order by diffrence desc;

/* 5  Get the products that have the highest and lowest manufacturing costs. */

SELECT d.product_code, d.product, f.manufacturing_cost 
FROM fact_manufacturing_cost f JOIN dim_product d
ON d.product_code = f.product_code
WHERE manufacturing_cost
IN (
	SELECT MAX(manufacturing_cost) FROM fact_manufacturing_cost
    UNION
    SELECT MIN(manufacturing_cost) FROM fact_manufacturing_cost
    ) 
ORDER BY manufacturing_cost DESC ;


/* 6. Generate a report which contains the top 5 customers who received an 
average high  pre_invoice_discount_pct  for the  fiscal  year 2021  and in the 
Indian  market */

select c.customer_code,c.customer,avg(f.pre_invoice_discount_pct) as average_discount_percentage
from dim_customer c
join fact_pre_invoice_deductions f on
f.customer_code=c.customer_code
where c.market="India" and f.fiscal_year='2021'
group by c.customer_code
order by average_discount_percentage desc
limit 5;

/*7. Get the complete report of the Gross sales amount for the customer  “Atliq 
Exclusive” for each month */

select monthname(f.date) as month,f.fiscal_year,round(sum((sold_quantity*gross_price)),2) as gross_sales_amount 
from fact_sales_monthly f
join fact_gross_price g on
g.product_code=f.product_code
join dim_customer c on
c.customer_code=f.customer_code
where c.customer="Atliq Exclusive"
group by month,f.fiscal_year
order by f.fiscal_year;

/* 8.  In which quarter of 2020, got the maximum total_sold_quantity */

WITH table1 AS (
    SELECT
        CASE
            WHEN MONTH(`date`) IN (9, 10, 11) THEN 'Q1'
            WHEN MONTH(`date`) IN (12, 1, 2) THEN 'Q2'
            WHEN MONTH(`date`) IN (3, 4, 5) THEN 'Q3'
            WHEN MONTH(`date`) IN (6, 7, 8) THEN 'Q4'
        END AS quarter_name,
        sold_quantity
    FROM fact_sales_monthly
    WHERE fiscal_year = 2020
)
SELECT
    quarter_name,
    SUM(sold_quantity) AS total_sold_quantity
FROM table1
GROUP BY quarter_name
ORDER BY total_sold_quantity DESC;

/*9.  Which channel helped to bring more gross sales in the fiscal year 2021 
and the percentage of contribution*/

WITH dim2 AS (
    SELECT
        c.channel AS channels,
        SUM(s.gross_price * f.sold_quantity) AS gross_sales
    FROM fact_sales_monthly AS f
    JOIN dim_customer AS c
        ON c.customer_code = f.customer_code
    JOIN fact_gross_price AS s
        ON s.product_code = f.product_code
    WHERE f.fiscal_year = 2021
    GROUP BY
        c.channel
),
dim3 AS (
    SELECT
        channels,
        gross_sales,
        ROUND(gross_sales / 1000000, 2) AS gross_sales_mln
    FROM dim2
)
SELECT
    channels,
    gross_sales_mln,
    ROUND(
        gross_sales_mln * 100.0
        / SUM(gross_sales_mln) OVER (),
        2
    ) AS percentage
FROM dim3
ORDER BY
    percentage DESC;

/* 10. Get the Top 3 products in each division that have a high 
total_sold_quantity in the fiscal_year 2021 */

with cte1 as (
	select
	d.division,
	d.product_code,
	product,
	sum(f.sold_quantity) as total_sold_quantity
	from dim_product d
	join fact_sales_monthly f on 
	f.product_code=d.product_code
	where f.fiscal_year=2021
	group by division,product_code,product
)
,
cte2 as (
select division,product_code,product,total_sold_quantity,
rank () over (partition by division order by total_sold_quantity desc) as rank_order
from cte1
)
select division,product_code,product,total_sold_quantity,rank_order
from cte2
where rank_order<=3;
