import axios from "axios";
import React, { useState } from "react";
import { Navigate, useNavigate } from "react-router-dom";
import Constants from "./Constants.json";

export default function Login() {
  const [loginProcessState, setLoginProcessState] = useState("idle");

  const navigate = useNavigate();

  const handleLoginSubmit = async (event) => {
    event.preventDefault();
    setLoginProcessState("processing");

    try {
      const result = await axios.post(
        Constants.API_ADDRESS +
          "/login?uname=" +
          event.target.username.value +
          "&pw=" +
          event.target.password.value
      );
      setLoginProcessState("loginSuccess");
      setTimeout(() => {
        navigate("/", { replace: true });
      }, 1500);
    } catch (error) {
      console.error(error);
      setLoginProcessState("loginFailure");
    }
  };

  let loginUIControls = null;
  switch (loginProcessState) {
    case "idle":
      loginUIControls = (
        <button type="submit" class="btn-1">
          Log In
        </button>
      );
      break;

    case "processing":
      loginUIControls = <span className="loginProcessing">Processing...</span>;
      break;

    case "loginSuccess":
      loginUIControls = <span className="loginSuccess">Login Success</span>;
      break;

    case "loginFailure":
      loginUIControls = (
        <div>
          <span className="loginFailure">Error</span>
          <h1> </h1>
          <button type="submit" className="btn-1">
            Log In
          </button>
        </div>
      );
  }

  return (
    <div class="col-6">
      <div id="login">
        <h2>Welcome Back</h2>

        <form onSubmit={handleLoginSubmit}>
          <div className="field-wrap">
            <label> Username:</label>
            <input className="input-1" type="text" name="username" />
          </div>

          <div class="field-wrap">
            <label>Set A Password:</label>
            <input className="input-1" type="text" name="password" />
          </div>
          <p class="forgot">
            <>No User? </>{" "}
            <a href="/SignUp" className="a1">
              Sign Up.
            </a>
          </p>

          {loginUIControls}
        </form>
      </div>
    </div>
  );
}
