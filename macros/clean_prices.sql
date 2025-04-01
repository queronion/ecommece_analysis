{% macro clean_number(column)%}

    {{ return("cast(regexp_replace("~ column ~ ", r'[^0-9.]', '') as float64)") }}

{% endmacro %}