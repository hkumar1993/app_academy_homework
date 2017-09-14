import React from 'react';
import { Route, NavLink, NavNavLink } from 'react-router-dom';
import Orange from './orange';
import Yellow from './yellow';

class Red extends React.Component {
  render() {
    return(
      <div>
        <h2 className="red"></h2>
          <NavLink exact to='/red'>red only</NavLink>
          <NavLink to='/red/orange'>red+orange</NavLink>
          <NavLink to='/red/yellow'>red+yellow</NavLink>


        <Route path="/red/orange" component={Orange} />
        <Route path="/red/yellow" component={Yellow} />
      </div>
    );
  }
};

export default Red;
