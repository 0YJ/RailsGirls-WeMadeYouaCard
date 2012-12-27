jQuery ->
  class window.AppRouter extends Backbone.Router
    routes: 
      ''                             : "indexCards"
      '/cards'                       : "indexCards"
      '/cards/:id'                   : "showCard"
      '/cards/:card_id/messages'     : "indexMessages"
      '/cards/:card_id/messages/:id' : "showMessage"

    showCard: ->
      card = new Card {id: @id}
      card_view = new CardView {model: card}

    indexCards: ->
      cards      = new Cards
      cards_view = new CardsView({collection: cards})
      cards.fetch()

    showMessage: ->
      alert "it worked"
      message = new Message {id: @id}
      message.fetch()
      # jQuery ('audio').jPlayer()
      message_player = new CirclePlayer('#cp_container', {"/uploads/message/audio/1/5th_Element.mp3"}, { cssSelectorAncestor: "#cp_container" })

    indexMessages: ->
      card = new Card {id: @card_id}
      card.messages
  window.router = new AppRouter()

  Backbone.history.start()


