import axios from 'axios';
 
export const setAuthToken = receivedJWT => {
   if (receivedJWT) {
       axios.defaults.headers.common["Authorization"] = `Bearer ${receivedJWT}`;
   }
   else
       delete axios.defaults.headers.common["Authorization"];
}
import axios from 'axios';
 
export const uname = uname => {
   if (uname) {
       axios.defaults.headers.common["Authorization"];
   }
   else
       delete axios.defaults.headers.common["Authorization"];
}