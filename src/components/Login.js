import React, {useState} from "react";
import axios from "axios";
export default function login (){





  
  const Login =() => {
     const[username, setUsername] = useState("");
     const[password, setPassword] = useState("");
     const onSubmit = async (e) => {
      e.preventDefault()
     
    // const [jwt, setJwt] = uselocalState("", "jwt");
    // function sendLogin(){
      const post = {
       username: username,
       password: password,
     };

    //   fetch("localhost/8080", {
    //    headers: {
    //      "content-Type": "application/json",
    //    },
    //    method: "post",
    //    body: JSON.stringify(post),
    //  })
    //  .then((response)=>{
    //    if (response.status == 200)
    //        return Promise.all([response.json(), response.headers])
    //    else 
    //        return Promise.reject("Invalid log in attempt");
    //  })
    //  .then(([body, headers])=>{
    //     setJwt(headers.get("authorization"));
    //    window.location.href = "Home"
    //  })
    //  .catch((message)=>{
    //    alert(message);
    //  });

    try {
      const res = await axios.post('http://localhost:8080', post)
      console.log(res.data)
    } catch (e) {
      alert(e)
    }

    }
  

 

  return (

  

    <div class="col-6">
      <div id="login">
        <h2>Welcome Back</h2>

        <form onSubmit={onSubmit} >
          <div class="field-wrap">
          <label htmlFor="username">Username:</label>
          <input 
           type="text"
           required autoComplete="off"
           id="username"
           value={username}
           onChange={(e)=> setUsername(e.target.value)}/>
              
          </div>

          <div class="field-wrap">
            <label htmlFor="password">Password:</label>
            <input
            type="password"
            required autoComplete="off"
            id="password"
            value={password}
            onChange={(e)=> setPassword(e.target.value)}/>
             
          </div>
          <p class="forgot">
            <>No User? </> <a href="/SignUp">Sign Up.</a>
          </p>
          <button
          type="submit"
          className="btn-1"
          >Log In</button>
        </form>
      </div>
    </div>
  );
}}

//  export default Login;