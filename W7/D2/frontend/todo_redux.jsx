import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  store.dispatch = addLoggingToDispatch(store);
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
  console.log('test');
});

const addLoggingToDispatch = (store) => {
  let storeDispatch = store.dispatch;
  return (action) => {
    console.log('Old State: ', store.getState());
    console.log('Action: ', action);
    storeDispatch(action);
    console.log('New State: ', store.getState());
  }
}
