view: location {
  sql_table_name: ActualvsMax.Location ;;

  dimension: district_description {
    type: string
    sql: ${TABLE}.District_Description;;
  }

  dimension: fulfillment_location {
    type: string
    sql: ${TABLE}.Fulfillment_Location ;;
  }
  dimension: loc_sk {
    type: number
    primary_key: yes
    sql: ${TABLE}.Loc_sk ;;
  }

  dimension: max_picks {
    type: number
    sql: ${TABLE}.Max_Picks ;;
  }
  dimension: locn_nm {
    type: string
    sql: ${TABLE}.locn_nm ;;
  }
  dimension: divn_nbr {
    type: number
    sql: ${TABLE}.divn_nbr ;;
  }
  dimension: oper_divn_nm {
    type: string
    sql: ${TABLE}.oper_divn_nm ;;
  }
  dimension: zl_divn_nbr {
    type: number
    sql: ${TABLE}.zl_divn_nbr ;;
  }
  dimension: zl_str_nbr {
    type: number
    sql: ${TABLE}.Store_Number ;;
  }
  dimension: locn_nbr {
    type: number
    sql: ${TABLE}.locn_nbr ;;
  }
  dimension: state_cd {
    type: string
    sql: ${TABLE}.state_cd ;;
  }
  dimension: sub_rgn_id {
    type: number
    sql: ${TABLE}.sub_rgn_id ;;
  }
  dimension: operational_max_picks {
    type: number
    sql: ${TABLE}.Operational_Max_Picks;;
  }
  dimension: divn_name {
    type: string
    sql: ${TABLE}.divn_name;;
  }
  dimension: sub_region_description {
    type: string
    sql: ${TABLE}.Sub_Region_Description;;
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
