import { SET_LOGIN } from "./types";


export const setLogin = (isLoged) => (
    {
      type: SET_LOGIN,
      isLoged
    }
  );