import React from 'react';
import { Route, NavLink, NavNavLink } from 'react-router-dom';
import Indigo from './indigo';


class Blue extends React.Component {
  render() {
    return (
      <div>
        <h2 className="blue"></h2>
          <NavLink exact to='/blue'>blue only</NavLink>
          <NavLink to='/blue/indigo'>blue + indigo</NavLink>

        <Route path="/blue/indigo" component={Indigo} />

      </div>
    );
  }
};

export default Blue;
