import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component{
  constructor(props) {
    super(props);
    this.state = {searchTerm: ''};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    console.log(this.props);
  }

  handleChange(e){
    e.preventDefault();
    const val = e.currentTarget.value;
    this.setState({searchTerm: val});
  }

  handleSubmit(e){
    e.preventDefault();
    const searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm).then((res)=>{
      this.setState({searchTerm:''});
    });
  }

  render(){
    const giphys = this.props.giphys;
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <input className='search-bar'  type="text" value={this.state.searchTerm} name="" onChange={this.handleChange}/>
          <br/>  
          <input type="submit" value="Search"/>
        </form>
        <GiphysIndex giphys={giphys} />
      </div>
    )
  }
}

export default GiphysSearch;
