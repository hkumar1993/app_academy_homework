import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
    const store = configureStore(preloadedState);
  // const store = applyMiddlewares(configureStore(preloadedState), addLoggingToDispatch);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
  console.log('test');
});


// const addLoggingToDispatch = (store) => (next) => (action) => {
//   let storeDispatch = store.dispatch;
//   console.log('Old State: ', store.getState());
//   console.log('Action: ', action);
//   next(action);
//   console.log('New State: ', action);
// };

// const applyMiddlewares = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach((middleware)=>{
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// };
