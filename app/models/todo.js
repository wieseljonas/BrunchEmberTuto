'use strict';

Todos.Todo = DS.Model.extend({
  title: DS.attr('string'),
  isCompleted: DS.attr('boolean')
});

// ... additional lines truncated for brevity ...
Todos.Todo.FIXTURES = [
 {
   id: 1,
   title: 'Learn Ember.js',
   isCompleted: true
 },
 {
   id: 2,
   title: 'Pimp ass Shit',
   isCompleted: false
 },
 {
   id: 3,
   title: 'Profit!',
   isCompleted: true
 }
];