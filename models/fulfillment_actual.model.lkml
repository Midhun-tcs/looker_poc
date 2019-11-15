connection: "poc_bigquery_db_ebi"

# include all the views
include: "/views/**/*.view"

datagroup: fulfillment_actual_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fulfillment_actual_default_datagroup

explore: location {}

explore: order_dtl_fact {}
