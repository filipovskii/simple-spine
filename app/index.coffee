require('lib/setup')

Spine = require('spine')
Spine.route = require('spine/lib/route')
AddItem = require('controllers/item.add')
Preview = require('controllers/item.preview')
Item = require('models/item')

class App extends Spine.Controller
  constructor: ->
    super
    @routes
      '/': ->
        @html new AddItem(item: new Item())
      '/items/': ->
        @html new Preview()
      '/items/edit/:id': (params) ->
        @log params
        @html new AddItem(item: Item.find(params.id))
    Spine.route.setup()


module.exports = App
    
