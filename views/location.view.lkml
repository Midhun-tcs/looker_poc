view: location {
  sql_table_name: ActualvsMax.Location ;;

  dimension: district_description {
    type: string
    sql: ${TABLE}.dist_desc ;;
  }

  dimension: fulfillment_location {
    type: string
    sql: ${TABLE}.divn_str_name ;;
  }
  dimension: loc_sk {
    type: number
    primary_key: yes
    sql: ${TABLE}.locn_sk ;;
  }

  dimension: max_picks {
    type: number
    sql: ${TABLE}.max_picks ;;
  }
  dimension: locn_nm {
    type: string
    sql: ${TABLE}.locn_nm ;;
  }
  dimension: divn_nbr {
    type: string
    sql: ${TABLE}.divn_nbr ;;
  }
  dimension: oper_divn_nm {
    type: string
    sql: ${TABLE}.oper_divn_nm ;;
  }
  dimension: zl_divn_nbr {
    type: string
    sql: ${TABLE}.zl_divn_nbr ;;
  }
  dimension: zl_str_nbr {
    type: string
    sql: ${TABLE}.zl_str_nbr ;;
  }
  dimension: locn_nbr {
    type: string
    sql: ${TABLE}.locn_nbr ;;
  }
  dimension: state_cd {
    type: string
    sql: ${TABLE}.state_cd ;;
  }
  dimension: sub_rgn_id {
    type: string
    sql: ${TABLE}.sub_rgn_id ;;
  }
  dimension: operational_max_picks {
    type: number
    sql: ${TABLE}.ops_max_picks ;;
  }

  dimension: divn_name {
    type: number
    sql: ${TABLE}.divn_name ;;
  }

  dimension: sub_region_description {
    type: string
    sql: ${TABLE}.sub_rgn_desc ;;
  }

  measure: max_pick {
    type: sum
    sql: ${max_picks} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location]
  }
  measure: oper_max_pick {
    type: sum
    sql: ${operational_max_picks} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location]
  }
}
