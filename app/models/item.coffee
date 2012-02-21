Spine = require('spine')

class Item extends Spine.Model
  @configure "Item", "name", "description", "price", "img"
  @extend Spine.Model.Local

module.exports = Item
