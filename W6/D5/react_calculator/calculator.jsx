import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    // your code here
    this.state = {num1:"", num2:"", result: 0};
    this.setNum1 = this.setNum1.bind(this);
  }

  // your code here
  setNum1(e) {
    const num1 = e.target.value ? parseInt(e.target.value) : "";
    console.log('changed');
  }


  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={this.state.num1} />
      </div>
    );
  }
}

export default Calculator;
