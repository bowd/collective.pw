ns('Components').Questions = function() {
  let Breadcrumbs = ({section, item}) => (
    <ul className="breadcrumb">
      <li className="breadcrumb-item"> {section} </li>
      <li className="breadcrumb-item active"> {item} </li>
    </ul>
  );


  class Questions extends React.Component {
    constructor() {
      super();
      this.state = {
        currentQuestionIndex: 0,
        answers: {}
      };
      this.nextQuestion = this.nextQuestion.bind(this);
      this.prevQuestion = this.prevQuestion.bind(this);
    }

    renderQuestionOptions(question) {
      let {type} = question;
      if (type === 'single_choice') {
        return <SingleChoice question={question} />
      }
    }

    nextQuestion(e) {
      e.preventDefault();
      this.setState({currentQuestionIndex: this.state.currentQuestionIndex+1});
    }

    prevQuestion(e) {
      e.preventDefault();
      this.setState({currentQuestionIndex: this.state.currentQuestionIndex-1});
    }

    render() {
      let {items} = this.props;
      let {currentQuestionIndex} = this.state;
      let currentQuestion = items[currentQuestionIndex];
      let {section, item} = currentQuestion;

      return (
        <div className="Questions">
          <Breadcrumbs section={section} item={item} />
          <p className="Question-text">
            <span className="q-tip">
              {currentQuestionIndex+1}
            </span>
            {currentQuestion.question}
          </p>
          <div className="Question-answer">
            {this.renderQuestionOptions(currentQuestion)}
          </div>
          <div className="Question-actions">
            { currentQuestionIndex > 0 ?
              <button
                className="btn btn-default btn-md pull-left"
                onClick={this.prevQuestion}>
                Back
              </button>
            : null }
            <button
              className="btn btn-primary btn-md pull-right"
              onClick={this.nextQuestion}>
              Next
            </button>

          </div>
        </div>
      )
    }
  }

  class SingleChoice extends React.Component {
    renderOption(option, index) {
      if (typeof option === 'object') {
        option = option.item;
      }

      return (
        <option value={index}>{option}</option>
      )
    }

    componentDidMount() {
      $(this.refs.select).selectpicker();
    }

    componentDidUpdate() {
      $(this.refs.select).selectpicker();
    }

    render() {
      return (
        <select ref="select">
          {this.props.question.options.map(this.renderOption)}
        </select>
      )
    }
  }

  return Questions;
}();
