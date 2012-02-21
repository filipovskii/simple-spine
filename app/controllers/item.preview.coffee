Spine = require('spine')
Item = require('models/item')

class Preview extends Spine.Controller

  constructor: ->
    super
    @render()

  events:
    'click .item': 'clicked'

  render: ->
    items = Item.all()
    @log "here"
    @html require('views/item')(items)
    @

  clicked: (e) ->
    item = @$(e.target).data('item')
    @log "Item #{item.name} clicked"
    @navigate('/items/edit', item.id)

module.exports = Preview

