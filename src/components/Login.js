import React, { useState } from "react";

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  //const [jwt, setJwt] = uselocalState("", "jwt");
  function sendLogin() {
    const reqBody = {
      username: username,
      password: password,
    };

    fetch("api/auth/login", {
      headers: {
        "content-Type": "application/json",
      },
      method: "post",
      body: JSON.stringify(reqBody),
    })
      .then((response) => {
        if (response.status == 200)
          return Promise.all([response.json(), response.headers]);
        else return Promise.reject("Invalid log in attempt");
      })
      .then(([body, headers]) => {
        //setJwt(headers.get("authorization"));
        window.location.href = "/";
      })
      .catch((message) => {
        alert(message);
      });
  }

  return (
    <div className="col-6">
      <div id="login">
        <h2>Welcome Back</h2>

        <form>
          <div className="field-wrap">
            <label htmlFor="username">Username:</label>
            <input
              className="input-1"
              type="text"
              required
              autocomplete="off"
              id="username"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
            />
          </div>

          <div className="field-wrap">
            <label htmlFor="password">Password:</label>
            <input
              className="input-1"
              type="password"
              required
              autocomplete="off"
              id="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
            />
          </div>
          <p className="forgot">
            <>No User? </> <a href="/SignUp">Sign Up.</a>
          </p>
          <button type="submit" className="btn-1" onClick={() => sendLogin()}>
            Log In
          </button>
        </form>
      </div>
    </div>
  );
};

export default Login;
