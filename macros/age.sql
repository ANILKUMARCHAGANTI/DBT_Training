{% macro age(date_column) %}

    DATE_DIFF(
        CURRENT_DATE(),
    DATE(
        {{ date_column }}
        ), YEAR)

{% endmacro %}