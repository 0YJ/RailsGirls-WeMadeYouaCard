jQuery ->
  class window.MessageView extends Backbone.View

    tagName: "li"

    initialize: ->
      _.bindAll @
      @model.bind 'change', @render
      @model.bind 'remove', @unrender

    render: ->
      @$el.html "<img src='#{@model.get "image"}'/><span>#{@model.get "text"} </span>"
      @

    unrender: -> 
      @$el.remove()

  class window.MessagesView extends Backbone.View

    el: '#container'

    initialize: ->
      _.bindAll @
      @collection = new Messages
      @collection.bind 'add', @appendItem
      @counter = 0
      @render()

    render: ->
    @

    addItem: ->
      message = new Message
      @collection.add message

    appendItem: (message) ->
      $('#container').empty()
      message_view = new MessageView model: message
      $('ul:first').append message_view.render().el

  message_list_view = new MessagesView
