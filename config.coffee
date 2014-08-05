exports.config =

  files:
    javascripts:
      defaultExtension: 'js'
      joinTo:
        'static/javascripts/app.js': /^app/
        'static/javascripts/vendor.js': /^bower_components|vendor\/(?!node)/

    stylesheets:
      defaultExtension: 'css'
      joinTo: 'static/stylesheets/app.css': /^app/

    templates:
      precompile: true
      root: 'templates'
      defaultExtension: 'hbs'
      joinTo: 'static/javascripts/app.js' : /^app/
      paths:
        jquery: 'bower_components/jquery/jquery.js'
        handlebars: 'bower_components/handlebars/handlebars.js'
        ember: 'bower_components/ember/ember.js'

  modules:
    addSourceURLs: true

  paths:
    public: 'public'