ns('Views', 'Story').PoliticalViews = Backbone.View.extend({
  initialize() {
    let {Questions} = Components;
    let items = JSON.parse($('#questions-json').text());
    ReactDOM.render(
      <Questions
        onChange={this.updateAnswers}
        items={items}
      />,
      document.getElementById('questions-root')
    );
  },

  updateAnswers(answers) {
    console.log(answers);

  }
})
