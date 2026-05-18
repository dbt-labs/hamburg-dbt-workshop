WITH dim_customers AS (
  SELECT
    CUSTOMER_ID,
    LIFETIME_VALUE
  FROM {{ ref('jaffle_shop', 'dim_customers') }}
), formula_eb29 AS (
  SELECT
    *,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY
      lifetime_value) OVER () AS median_ltv
  FROM dim_customers
), formula_5013 AS (
  SELECT
    *,
    CASE WHEN LIFETIME_VALUE > median_ltv THEN 'over' ELSE 'under' END AS ltv_segment
  FROM formula_eb29
), dim_customer_segments_sql AS (
  SELECT
    *
  FROM formula_5013
)
SELECT
  *
FROM dim_customer_segments_sql