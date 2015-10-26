# Grunt library that allows you to break up your Gruntfile config by task.
# https://github.com/firstandthird/load-grunt-config

module.exports = (grunt) ->

  taskLoader = require 'load-grunt-config'
  timeCounter = require 'time-grunt'
  pathHandler = require 'path'

  timeCounter grunt

  taskLoader grunt,
    configPath: pathHandler.join process.cwd(), 'task'
    loadGruntTasks:
      config: require './package.json'
      scope: 'devDependencies'
