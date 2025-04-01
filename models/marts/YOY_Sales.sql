WITH sales_performance AS (
    SELECT
        *
    FROM
        {{ ref("fct_sales") }}
)
SELECT
    EXTRACT(
        MONTH
        FROM
            s.sales_date
    ) AS month_name,
    ROUND(
        SUM(
            CASE
                WHEN EXTRACT(
                    YEAR
                    FROM
                        s.sales_date
                ) = 2022 THEN s.sales_units * p.product_price
            END
        ),
        2
    ) AS revenue_2022,
    ROUND(
        SUM(
            CASE
                WHEN EXTRACT(
                    YEAR
                    FROM
                        s.sales_date
                ) = 2023 THEN s.sales_units * p.product_price
            END
        ),
        2
    ) AS revenue_2023
FROM
    sales_performance AS s
    LEFT JOIN {{ ref("dim_products") }} AS p
    ON s.product_id = p.product_id
GROUP BY
    month_name
ORDER BY
    month_name
