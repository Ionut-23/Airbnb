{# in dbt Develop #}

{% set old_fct_orders_query %}
  select
    *
  from AWIR_D_TEST.DEV_SCH_TEST.FCT_REVIEWS
{% endset %}

{% set new_fct_orders_query %}
  select
    *
  from {{ ref('fct_reviews') }}
{% endset %}

{{ audit_helper.compare_queries(
    a_query=old_fct_orders_query,
    b_query=new_fct_orders_query,
    primary_key="review_id"
) }}
