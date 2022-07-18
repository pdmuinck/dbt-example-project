{% macro run_limited_set(query) %}
    {% set limited_query %}
        {{ query }} limit 20;
    {% endset %}
  {% set results = run_query(limited_query) %}
    {% do results.print_html() %}
{% endmacro %}