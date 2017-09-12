import { createStore } from 'redux';
import RootReducer from '../reducers/root_reducer';
import { applyMiddleware } from 'redux';


const configureStore = (preloadedState = {}) => {
  const store = createStore(RootReducer, preloadedState, applyMiddleware(addLoggingToDispatch));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

const addLoggingToDispatch = (store) => (next) => (action) => {
  let storeDispatch = store.dispatch;
  console.log('Old State: ', store.getState());
  console.log('Action: ', action);
  next(action);
  console.log('New State: ', action);
};


export default configureStore;
