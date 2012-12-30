jQuery ->
  class window.Card extends Backbone.Model
    url: '/cards/:id'

    defaults:
      title: "Koolaid man says, 'oh, yeah.'"

    messages: ->
      @messages = new Messages
      @messages.url = '/cards/' + @id + '/messages'
      @messages.fetch()
