{% macro run_limited_set(sql) %}
{% set sql %}
    {{ sql }}
{% endset %}

{% set results = run_query(sql) %}
{% do results.print_table() %}
{% endmacro %}
