import axios from "axios";
import React, { useState } from "react";
import Constants from "./Constants.json";

export default function SignUp() {
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
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <div class="col-6">
      <div class="tab-content">
        <div id="signup">
          <h2>Sign Up</h2>

          <form onSubmit={handleSignupSubmit}>
            <div class="field-wrap">
              <label> Username:</label>
              <input type="text" name="username" />
            </div>

            <div class="field-wrap">
              <label>Set A Password:</label>
              <input type="text" name="password" />
            </div>

            <button type="submit" class="btn-1">
              Get Started
            </button>
          </form>
        </div>
      </div>
    </div>
  );
}
