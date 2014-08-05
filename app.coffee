console.log "app node file", process.cwd()
 
mongoose = require 'mongoose'
express = require 'express'
 
app = express()
 
app.configure ->
  app.use express.static(__dirname + '/public')
  app.use express.bodyParser()
 
require('./app_routes')(app)
 
mongoUri = process.env.MONGOHQ_URL || 'mongodb://localhost/airpair_dev'
mongoose.connect mongoUri
 
db = mongoose.connection
db.on('error', console.error.bind(console, 'connection error:'))
db.once 'open', ->
  console.log 'connected to db'
 
exports.startServer = (port, path, callback) ->
  p = process.env.PORT || port
  console.log "startServer on port: #{p}, path #{path}"
  app.listen p
 
isHeroku = process.env.MONGOHQ_URL?
if require.main is module
    exports.startServer()