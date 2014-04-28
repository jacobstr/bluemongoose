Promise = require 'bluebird'

bluemongoose = (mongoose) ->
  { Model } = mongoose

  Model::saveAsync = Promise.promisify Model::save

  Model.findAsync = Promise.promisify Model.find
  Model.removeAsync = Promise.promisify Model.remove

  mongoose

module.exports = bluemongoose
