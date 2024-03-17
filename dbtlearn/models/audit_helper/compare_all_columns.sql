{# in dbt Develop #}

{% set old_etl_relation_query %}
select * from AWIR_D_TEST.DEV_SCH_TEST.FCT_REVIEWS
{% endset %}


{% set new_etl_relation_query %}
select * from {{ ref('fct_reviews') }}
{% endset %}


{% set audit_query = audit_helper.compare_column_values(
    a_query=old_etl_relation_query,
    b_query=new_etl_relation_query,
    primary_key="review_id",
    column_to_compare="review_id"
) %}

{% set audit_results = run_query(audit_query) %}

{% if execute %}
{% do audit_results.print_table() %}
{% endif %}