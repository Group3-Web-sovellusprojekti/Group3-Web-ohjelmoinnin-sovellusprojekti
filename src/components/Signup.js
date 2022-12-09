import axios from "axios";
import React, { useState } from "react";

export default function SignUp() {
  const handleSignupSubmit = async (event) => {
    event.preventDefault();
    console.log(event.target.username.value);
    console.log(event.target.password.value);

    try {
      const result = await axios.post("http://localhost:8080/register", {
        username: event.target.username.value,
        password: event.target.password.value,
      });
      console.log(result);
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
            <div>
              username <br />
              <input type="text" name="username" />
            </div>
            <div>
              Password <br />
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
