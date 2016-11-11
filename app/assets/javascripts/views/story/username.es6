ns('Views', 'Story').Username = Backbone.View.extend({
  events: {
    'input input': 'updateCopy'
  },

  updateCopy(e) {
    let username = $(e.target).val();
    username = username == '' ? 'username' : username;
    this.$('.private-link').text(
      'collective.pw/@'+username
    )
  }
});
