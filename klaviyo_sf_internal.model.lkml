connection: "snowflake-edw"

include: "views/*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: event_fact {
  join: account_dim {
    relationship: one_to_many
    sql_on: ${account_dim.accountkey}=${event_fact.accountkey} ;;
    type: inner
  }
  join: campaign_dim {
    relationship: one_to_many
    sql_on: ${campaign_dim.campaignkey}=${event_fact.campaignkey} ;;
    type: inner
  }
  #join: event_dim {
    #relationship: one_to_one
    #sql_on: ${event_dim.eventkey}=${event_fact.eventkey} ;;
   # type: inner
 # }
  join: metric_dim {
    relationship: one_to_many
    sql_on: ${metric_dim.metrickey}=${event_fact.metrickey} ;;
    type: inner
  }
  join: person_dim {
    relationship: one_to_many
    sql_on: ${person_dim.personkey}=${event_fact.personkey} ;;
    type: inner
  }


}
