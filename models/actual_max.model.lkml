connection: "poc_bigquery_db_ebi"

# include all the views
include: "/views/**/*.view"

datagroup: actual_max_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: actual_max_default_datagroup

explore: actualvs_max {}

explore: location {}
