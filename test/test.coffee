Person = require './support/person'

describe 'Model', ->

  it 'create a new Person', ->
    person = new Person name: 'bob'
    person.saveAsync()

  it 'find a Person', ->
    people = Person.findAsync name: 'bob'
    people.then (res) ->
      res.should.have.length 1

  it 'remove a Person', ->
    Person.removeAsync name: 'bob'
