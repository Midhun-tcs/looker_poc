view: location {
  sql_table_name: ActualvsMax.Location ;;

  dimension: district_description {
    type: string
    sql: ${TABLE}.District_Description ;;
  }

  dimension: fulfillment_location {
    type: string
    sql: ${TABLE}.Fulfillment_Location ;;
  }

  dimension: loc_sk {
    type: number
    sql: ${TABLE}.Loc_sk ;;
  }

  dimension: max_picks {
    type: number
    sql: ${TABLE}.Max_Picks ;;
  }

  dimension: operational_max_picks {
    type: number
    sql: ${TABLE}.Operational_Max_Picks ;;
  }

  dimension: store_number {
    type: number
    sql: ${TABLE}.Store_Number ;;
  }

  dimension: sub_region_description {
    type: string
    sql: ${TABLE}.Sub_Region_Description ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
