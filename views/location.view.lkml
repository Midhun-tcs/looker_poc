view: location {
  sql_table_name: ActualvsMax.Location ;;

  dimension: district {
    type: string
    sql: ${TABLE}.District_Description ;;
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
