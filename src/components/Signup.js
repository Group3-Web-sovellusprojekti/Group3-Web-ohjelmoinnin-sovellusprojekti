import React, { useState } from "react";

export default function SignUp() {
  const [username, setUsername] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  return (
    <div class="col-6">
      <div class="tab-content">
        <div id="signup">
          <h2>Sign Up</h2>

          <form action="/" method="post">
            <div class="field-wrap">
              <label htmlFor="username"> Username:</label>
              <input
                type="text"
                required
                autocomplete="off"
                id="username"
                value={username}
                onChange={(e) => {
                  setUsername(e.target.value);
                }}
              />
            </div>

            <div class="field-wrap">
              <label htmlFor="email">Email Address:</label>
              <input
                type="email"
                required
                autocomplete="off"
                id="email"
                value={email}
                onChange={(e) => {
                  setEmail(e.target.value);
                }}
              />
            </div>

            <div class="field-wrap">
              <label htmlFor="password">Set A Password:</label>
              <input
                type="password"
                required
                autocomplete="off"
                id="password"
                value={password}
                onChange={(e) => {
                  setPassword(e.target.value);
                }}
              />
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
