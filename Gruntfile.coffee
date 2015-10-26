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
