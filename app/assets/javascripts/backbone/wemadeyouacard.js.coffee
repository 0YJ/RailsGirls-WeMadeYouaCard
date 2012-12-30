#= require_self
#= require_tree  ./templates
#= require       ./models/Card
#= require       ./models/Cards
#= require       ./models/Message
#= require_tree  ./views
#= require_tree  ./routers

jQuery ->
  window.Wemadeyouacard =
    Models: {}
    Collections: {}
    Routers: {}
    Views: {}
