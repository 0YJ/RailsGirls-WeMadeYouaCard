jQuery ->

  class window.CardView extends Backbone.View

    el:  $('ul:first')
    model: Card

    initialize: ->
      _.bindAll @, 'render'
      @model.bind 'change:title' , @render

    initialRender: ->

    render: ->
      @$el.append('<li><a href="cards/' + @model.id + '/messages">' + @model.get('title') + '</a></li>')

  class window.CardsView extends CardView

    urlRoot: '/cards.json'

    initialize: ->
      _.bindAll @
      @collection.bind 'reset', @render

    render: ->
      $cards = @.$('.cards')
      @collection.each (card) ->
        view = new CardView model: card, collection: @collection
        $cards.append view.render().el
      @
