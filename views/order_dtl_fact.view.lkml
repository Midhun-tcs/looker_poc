view: order_dtl_fact {
  sql_table_name: Fulfilment_Actual.order_dtl_fact ;;

  dimension: bops_sdd_in_prcs_unit_qty {
    type: number
    sql: ${TABLE}.bops_sdd_in_prcs_unit_qty ;;
  }

  dimension: bops_sdd_not_pickup_rdy_unit_qty {
    type: number
    sql: ${TABLE}.bops_sdd_not_pickup_rdy_unit_qty ;;
  }

  dimension: bops_sdd_not_shp_unit_qty {
    type: number
    sql: ${TABLE}.bops_sdd_not_shp_unit_qty ;;
  }

  dimension: expdt_swt_cd {
    type: string
    sql: ${TABLE}.expdt_swt_cd ;;
  }

  dimension: fill_loc_fk {
    type: number
    sql: ${TABLE}.fill_loc_fk ;;
  }

  dimension: how_xpcted_desc {
    type: string
    sql: ${TABLE}.how_xpcted_desc ;;
  }

  dimension: non_bops_in_prcs_unit_qty {
    type: number
    sql: ${TABLE}.non_bops_in_prcs_unit_qty ;;
  }

  dimension: non_bops_not_shp_unit_qty {
    type: number
    sql: ${TABLE}.non_bops_not_shp_unit_qty ;;
  }

  dimension: non_bops_prnt_unit_qty {
    type: number
    sql: ${TABLE}.non_bops_prnt_unit_qty ;;
  }

  dimension: not_shp_unit_qty {
    type: number
    sql: ${TABLE}.not_shp_unit_qty ;;
  }

  dimension: shpabl_not_shp_strgc_unit_qty {
    type: number
    sql: ${TABLE}.shpabl_not_shp_strgc_unit_qty ;;
  }

  dimension: shpmnt_stat_cd {
    type: number
    sql: ${TABLE}.shpmnt_stat_cd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
