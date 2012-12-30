jQuery ->
  class window.Message extends Backbone.Model

    url: ->
      url = "cards/#{@card_id}/messages/"
      url += "/#{@.id}" if @id != undefined
      url

    defaults:
      image: "http://placekitten.com/25/25", 
      text:  "haza!"

  class window.Messages extends Backbone.Collection
    model: Message

