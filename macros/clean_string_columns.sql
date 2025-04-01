{% macro clean_string(column) %}
    {{ return("REGEXP_REPLACE(" ~ column ~ ", r'[^a-zA-Z]+$', '')") }}
{% endmacro %}
