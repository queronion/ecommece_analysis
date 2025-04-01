SELECT
    ROUND(
        (
            (
                rev_23.total_revenue / (
                    SELECT
                        total_revenue
                    FROM
                        {{ ref("YTD_Revenue_2022") }}
                )
            ) - 1
        ) * 100, 2
    ) as difference
FROM
    {{ ref("YTD_Revenue_2023") }} AS rev_23
