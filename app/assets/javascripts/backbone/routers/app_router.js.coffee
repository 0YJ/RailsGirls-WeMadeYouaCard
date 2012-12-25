jQuery ->
  class window.AppRouter extends Backbone.Router
    routes: 
      ''                             : "indexCards"
      '/cards'                       : "indexCards"
      '/cards/:id'                   : "showCard"
      '/cards/:card_id/messages'     : 'indexMessages'
      '/cards/:card_id/messages/:id' : 'showMessage'

    showCard: ->
      card = new Card {id: @id}
      card_view = new CardView {model: card}

    indexCards: ->
      cards      = new Cards
      cards_view = new CardsView({collection: cards})
      cards.fetch()

    showMessage: ->
      message = new Message {id: @id}
      message.fetch()

    indexMessages: ->
      card = new Card {id: @card_id}
      card.messages

jQuery ->
  window.app_router = new AppRouter

  Backbone.history.start
    pushState: true


