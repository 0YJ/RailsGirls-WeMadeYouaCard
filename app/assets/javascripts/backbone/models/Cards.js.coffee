jQuery ->
  class window.Cards extends Backbone.Collection
    model : window.Card
    url   : '/cards.json'

    render: ->
      $('ul.cards').empty().append("<li><p>howdy</p></li>")
      console.log("this happened")

    resetCount: ->
      @messages.count

    messages: ->
      @messages = new window.Messages
      @messages.url = '/card/' + @id + '/messages'
      @messages.fetch()
