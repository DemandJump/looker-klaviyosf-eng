connection: "snowflake-edw"

include: "views/*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: insight_fact {
  access_filter: {
    field:  insight_fact._pid
    user_attribute: djaim_pid
  }
  join: account_dim {
    relationship: one_to_many
    sql_on: ${account_dim.id}=${insight_fact.account_id} ;;
    type: inner
  }
  join: campaign_dim {
    relationship: one_to_many
    sql_on: ${campaign_dim.id}=${insight_fact.campaign_id} ;;
    type: inner
  }
  join: metric_dim {
    relationship: one_to_many
    sql_on: ${metric_dim.id}=${insight_fact.metric_id} ;;
    type: inner
  }
  join: insight_dim {
    relationship: one_to_many
    sql_on: ${insight_dim.id}=${insight_fact.insight_id};;
    type: inner
  }
}
