module.exports = (grunt) ->
  # Add the grunt-mocha-test tasks.
  grunt.loadNpmTasks "grunt-mocha-test"
  grunt.loadNpmTasks "grunt-contrib-watch"

  # Configure a mochaTest task
  grunt.initConfig
    mochaTest:
      test:
        options:
          reporter: "spec"
          require: [
            "coffee-script/register"
            "test/common.coffee"
          ]
        src: ["test/**/*test.coffee"]

    watch:
      test:
        files: ['lib/**/*.coffee', 'test/**/*.coffee']
        tasks: ['mochaTest']
        options:
          spawn: false

  grunt.registerTask 'test', [ 'watch:test' ]
  return
