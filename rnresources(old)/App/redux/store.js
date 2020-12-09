import AsyncStorage from "@react-native-community/async-storage";
import { createStore, applyMiddleware } from "redux";
import thunk from "redux-thunk";
import { persistStore, persistReducer } from "redux-persist";
import logger from "redux-logger";
import rootReducer from "./reducerIndex";

const middleware = [thunk];

if (process.env.NODE_ENV !== "production") {
  middleware.push(logger);
}

const persistConfig = {
  key: "root",
  storage: AsyncStorage,
  blacklist: ["AppReducer"]
};

const persistedReducer = persistReducer(persistConfig, rootReducer);

const store = createStore(persistedReducer, applyMiddleware(...middleware));

let persistor = persistStore(store);

export { store, persistor };
