import { combineReducers } from "redux";
import AppReducer from "./App/AppReducer";

const rootReducer = combineReducers({
  AppReducer: AppReducer
});

export default rootReducer;
