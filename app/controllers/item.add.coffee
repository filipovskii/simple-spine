Spine = require('spine')

class AddItem extends Spine.Controller

  events:
    'click .save': 'save'

  elements:
    'form': 'form'

  constructor: ->
    super
    @render()
    @

  render: ->
    @html require('views/edit')(@item)
    @

  save: (e) ->
    e.preventDefault()
    @item.fromForm(@form).save()
    @log "saved #{@item}"
    @navigate('/items/')
    @

module.exports = AddItem
