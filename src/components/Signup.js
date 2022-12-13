import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import Constants from "./Constants.json";

export default function SignUp() {
  const navigate = useNavigate();

  const handleSignupSubmit = async (event) => {
    event.preventDefault();
    console.log(event.target.username.value);
    console.log(event.target.password.value);
    console.log(
      Constants.API_ADDRESS +
        "/register?uname=" +
        event.target.username.value +
        "&pw=" +
        event.target.password.value
    );

    try {
      const result = await axios.post(
        Constants.API_ADDRESS +
          "/register?uname=" +
          event.target.username.value +
          "&pw=" +
          event.target.password.value
      );
      console.log(result);
      navigate("/login", { replace: true });
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <div className="col-6">
      <div className="tab-content">
        <div id="signup">
          <h2>Sign Up</h2>

          <form onSubmit={handleSignupSubmit}>
            <div className="field-wrap">
              <label> Username:</label>
              <input className="input-1" type="text" name="username" />
            </div>

            <div className="field-wrap">
              <label>Set A Password:</label>
              <input className="input-1" type="text" name="password" />
            </div>

            <button type="submit" className="btn-1">
              Get Started
            </button>
          </form>
        </div>
      </div>
    </div>
  );
}
