import React from "react";

export default function SignUp() {
  const [username, setUsername] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  return (
    <div class="col-6">
      <div class="tab-content">
        <div id="signup">
          <h2>Sign Up</h2>

          <form onSubmit={ handleSignupSubmit }>
            <div class="field-wrap">
              <label>Username:</label>
              <input type="text" required autocomplete="off" />
            </div>

            

            <div class="field-wrap">
              <label htmlFor="password">Set A Password:</label>
              <input
                class="input-1"
                type="password"
                required
                autoComplete="off"
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

};

