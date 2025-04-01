{% macro clean_date(column) %}

    {{ return("parse_date('%m/%d/%Y', regexp_replace(" ~ column ~ ", r'[^0-9/]', ''))") }}

{% endmacro %}