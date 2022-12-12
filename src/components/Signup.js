import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

export default function SignUp() {
  return (
    <div className="col-6">
      <div className="tab-content">
        <div id="signup">
          <h2>Sign Up</h2>

          <form>
            <div>
              username <br />
              <input type="text" name="uname" />
            </div>
            <div>
              Password <br />
              <input type="text" name="pw" />
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
