bluemongoose = require '../../index'

mongoose = bluemongoose(require 'mongoose')

# A random-ish database based on the 7 character hash of our initial commit.
mongoose.connect 'mongodb://localhost/fc8321f_bluemongoose_test'

Schema = mongoose.Schema

schema = new Schema
  name: String
  age: String
  seen: type: Date, default: Date.now

module.exports = mongoose.model 'Person', schema
