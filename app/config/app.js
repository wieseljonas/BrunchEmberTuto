'use strict';

var config = {
    LOG_TRANSITIONS: true,
    LOG_TRANSITIONS_INTERNAL: false
  };

window.Todos = Ember.Application.create(config);

Todos.ApplicationAdapter = DS.FixtureAdapter.extend();


