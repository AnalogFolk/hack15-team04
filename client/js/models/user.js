var journeyApp = journeyApp || {};

journeyApp.User = Backbone.Model.extend({
  urlRoot: "http://localhost:3000/profile"
})