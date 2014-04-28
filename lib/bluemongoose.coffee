Promise = require 'bluebird'

bluemongoose = (mongoose) ->
  { Model } = mongoose

  original_save = Model::save
  Model::save = ->
    console.log arguments
    original_save.apply this, arguments

module.exports = bluemongoose
