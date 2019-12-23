view: actualvs_max {
  sql_table_name: ActualvsMax.ActualvsMax ;;

  dimension: bops_sdd_units_inprocess {
    type: number
    hidden: yes
    sql: ${TABLE}.BOPS_SDD_Units_Inprocess ;;
  }

  dimension: bops_sdd_units_not_ready {
    type: number
    hidden: yes
    sql: ${TABLE}.BOPS_SDD_Units_Not_Ready ;;
  }

  dimension: bops_sdd_units_printed {
    type: number
    hidden: yes
    sql: ${TABLE}.BOPS_SDD_Units_Printed ;;
  }

  dimension: loc_fk {
    type: number
    primary_key: yes
    sql: ${TABLE}.loc_fk ;;
  }

  dimension: max_picks____shippable_ {
    type: number
    hidden: yes
    sql: ${TABLE}.Max_Picks____Shippable_ ;;
  }

  dimension: operational_max_picks____shippable_ {
    type: number
    hidden: yes
    sql: ${TABLE}.Operational_Max_Picks____Shippable_ ;;
  }

  dimension: shippable_in_process {
    type: number
    hidden: yes
    sql: ${TABLE}.Shippable_In_Process ;;
  }

  dimension: shippable_printed {
    type: number
    hidden: yes
    sql: ${TABLE}.Shippable_Printed ;;
  }

  dimension: shippable_unshipped {
    type: number
    hidden: yes
    sql: ${TABLE}.Shippable_Unshipped ;;
  }

  dimension: shippable_unshipped_dedicated_fulfillment {
    type: number
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.Total_Units_Incomplete ;;
  }
  measure: bops_sdd_inprocess {
    type: sum
    sql: ${bops_sdd_units_inprocess} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location,bops_sdd_inprocess]
  }
  measure: bops_sdd_not_ready {
    type: sum
    sql: ${bops_sdd_units_not_ready} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location,bops_sdd_not_ready]
  }
  measure: bops_sdd_printed {
    type: sum
    sql: ${bops_sdd_units_printed} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location,bops_sdd_printed]
  }
  measure: shippbl_in_process {
    type: sum
    sql: ${shippable_in_process} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location,shippbl_in_process]
  }
  measure: shippable_printd {
    type: sum
    sql: ${shippable_printed} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location,shippable_printd]
  }
  measure: shippable_unshippd {
    type: sum
    sql: ${shippable_unshipped} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location,shippable_unshippd]
  }
  measure: shippabl_unshippd_dedicated_fulfillment {
    type: sum
    sql: ${shippable_unshipped_dedicated_fulfillment} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location,shippabl_unshippd_dedicated_fulfillment]
  }
  measure: total_units_incomplt {
    type: sum
    sql: ${total_units_incomplete} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location,total_units_incomplt]
  }
  measure: max_pick_percent {
    type: number
    sql: 100*${shippabl_unshippd_dedicated_fulfillment}/${location.max_pick} ;;
    value_format: "0.00%"
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location]
  }
  measure: operational_max_pick_percent {
    type: number
    sql: 100*${shippabl_unshippd_dedicated_fulfillment}/${location.oper_max_pick} ;;
    value_format: "0.00%"
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location]
  }
}
