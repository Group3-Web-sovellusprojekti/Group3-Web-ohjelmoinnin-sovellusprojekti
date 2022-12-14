import axios from 'axios';
 
export const setAuthToken = receivedJWT => {
   if (receivedJWT) {
       axios.defaults.headers.common["Authorization"] = `Bearer ${receivedJWT}`;
   }
   else
       delete axios.defaults.headers.common["Authorization"];
}
 
export const setUsername = uname => {
   if (uname) {
       axios.defaults.headers.common["Authorization"] = "uname";
   }
   else
       delete axios.defaults.headers.common["Authorization"];
}