import { SET_LOGIN } from "./types";



const initialState = {
    isLoged: false,
};


const AppReducer = (state = initialState, action : any) => {

    switch (action.type) {
        case SET_LOGIN:
            return {...state , isLoged: action.isLoged}
        default:
            return state;
    }
};

export default AppReducer;