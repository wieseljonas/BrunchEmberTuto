var express = require('express'),
    app = express(),

app.use(express["static"](__dirname + '/public'));
app.use(express.urlencoded());

app.get('/', function(req, res) {
return res.sendfile('./public/index.html');
});

exports.startServer = function(port, path, callback) {
  var p;
  p = process.env.PORT || port;
  console.log("startServer on port: " + p + ", path " + path);
  return app.listen(p);
};