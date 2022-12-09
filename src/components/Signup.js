import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

export default function SignUp() {
  const navigate = useNavigate();

  const handleSignupSubmit = async (event) => {
    event.preventDefault();
    console.log(event.target.uname.value);
    console.log(event.target.pw.value);

    try {
      const result = await axios.post("http://localhost:8080/register", {
        username: event.target.uname.value,
        password: event.target.pw.value,
      });
      console.log(result);
      navigate("/login", { replace: true });
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
              <input type="text" name="uname" />
            </div>
            <div>
              Password <br />
              <input type="text" name="pw" />
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
