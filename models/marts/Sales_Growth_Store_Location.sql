WITH rev_2022 AS(
    SELECT
        st.store_location,
        ROUND(SUM(s.sales_units * p.product_price)) AS total_revenue
    FROM
        {{ ref("fct_sales") }}  s
        LEFT JOIN {{ ref("dim_products") }}  p
        ON s.product_id = p.product_id
        LEFT JOIN {{ ref("dim_stores") }} st
        ON s.store_id = st.store_id
    WHERE
        s.sales_date BETWEEN "2022-01-01"
        AND "2022-09-30"
    GROUP BY
        st.store_location
),
rev_2023 AS (
    SELECT
        st.store_location,
        ROUND(SUM(s.sales_units * p.product_price)) AS total_revenue
    FROM
        {{ ref("fct_sales") }}
        s
        LEFT JOIN {{ ref("dim_products") }}
        p
        ON s.product_id = p.product_id
        LEFT JOIN {{ ref("dim_stores") }}
        st
        ON s.store_id = st.store_id
    WHERE
        s.sales_date BETWEEN "2023-01-01"
        AND "2023-09-30"
    GROUP BY
        st.store_location
)
SELECT
    rev_2023.store_location,
    ROUND(
        ((rev_2023.total_revenue / rev_2022.total_revenue) -1) * 100,
        2
    ) AS yoy_revenue_difference
FROM
    rev_2023
    LEFT JOIN rev_2022
    ON rev_2023.store_location = rev_2022.store_location
ORDER BY
    yoy_revenue_difference DESC
