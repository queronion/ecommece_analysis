{% macro clean_column(column) %}

    lower(
        regexp_replace(
            replace(
                cast({{column}} as string) 
            ),
            r"[^a-zA-Z]",
            ""
        )
    )
{% endmacro %}

