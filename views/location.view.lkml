view: location {
  sql_table_name: Fulfilment_Actual.location ;;

  dimension: dist_desc {
    type: string
    sql: ${TABLE}.dist_desc ;;
  }

  dimension: divn_name {
    type: string
    sql: ${TABLE}.divn_name ;;
  }

  dimension: divn_str_name {
    type: string
    sql: ${TABLE}.divn_str_name ;;
  }

  dimension: locn_sk {
    type: number
    sql: ${TABLE}.locn_sk ;;
  }

  dimension: max_picks {
    type: number
    sql: ${TABLE}.max_picks ;;
  }

  dimension: ops_max_picks {
    type: number
    sql: ${TABLE}.ops_max_picks ;;
  }

  dimension: sub_rgn_desc {
    type: string
    sql: ${TABLE}.sub_rgn_desc ;;
  }

  dimension: zl_divn_nbr {
    type: number
    sql: ${TABLE}.zl_divn_nbr ;;
  }

  measure: count {
    type: count
    drill_fields: [divn_str_name, divn_name]
  }
}
