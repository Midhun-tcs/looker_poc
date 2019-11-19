view: actualvs_max {
  sql_table_name: ActualvsMax.ActualvsMax ;;

  dimension: bops_sdd_units_inprocess {
    type: number
    sql: ${TABLE}.BOPS_SDD_Units_Inprocess ;;
  }

  dimension: bops_sdd_units_not_ready {
    type: number
    sql: ${TABLE}.BOPS_SDD_Units_Not_Ready ;;
  }

  dimension: bops_sdd_units_printed {
    type: number
    sql: ${TABLE}.BOPS_SDD_Units_Printed ;;
  }

  dimension: loc_fk {
    type: number
    primary_key: yes
    sql: ${TABLE}.loc_fk ;;
  }

  dimension: max_picks____shippable_ {
    type: number
    sql: ${TABLE}.Max_Picks____Shippable_ ;;
  }

  dimension: operational_max_picks____shippable_ {
    type: number
    sql: ${TABLE}.Operational_Max_Picks____Shippable_ ;;
  }

  dimension: shippable_in_process {
    type: number
    sql: ${TABLE}.Shippable_In_Process ;;
  }

  dimension: shippable_printed {
    type: number
    sql: ${TABLE}.Shippable_Printed ;;
  }

  dimension: shippable_unshipped {
    type: number
    sql: ${TABLE}.Shippable_Unshipped ;;
  }

  dimension: shippable_unshipped_dedicated_fulfillment {
    type: number
    sql: ${TABLE}.Shippable_Unshipped_Dedicated_Fulfillment ;;
  }

  dimension: strategic_loc_indicator {
    type: yesno
    sql: ${TABLE}.Strategic_LOC_Indicator ;;
  }

  dimension: strategic_upc_indicator {
    type: yesno
    sql: ${TABLE}.Strategic_UPC_Indicator ;;
  }

  dimension: total_units_incomplete {
    type: number
    sql: ${TABLE}.Total_Units_Incomplete ;;
  }
  measure: sum {
    type: sum
    drill_fields: [loc_fk,strategic_loc_indicator,strategic_upc_indicator]
  }
}
