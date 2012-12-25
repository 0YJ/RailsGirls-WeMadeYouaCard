jQuery ->
  class window.Card extends Backbone.Model

    url: '/cards/:id'

    initialize: ->
      @messages = new Messages
      @messages.url = '/cards/' + @id + '/messages'

    defaults:
      title: "Koolaid man says, 'oh, yeah.'"

  class window.Cards extends Backbone.Collection
    model : Card
    url   : '/cards.json'

    initialize: ->
      @messages = new Message
      @messages.url = '/card/' + @id + '/messages'
      @messages.bind('reset', @resetCount)

    render: ->
      $('ul').empty().append("<li><p>howdy</p></li>")

    resetCount: ->
      @messages.count
