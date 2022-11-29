
import React from "react";
import { Link } from "react-router-dom";

export default function Navbar() {
  return (
    <nav id="nav" class="navbar">
      <div class="col-3 navbar">
        <div class="nav1">
          <ul class="ul-1">
            <li>
              <Link className="nav-link" to="/">
                <button class="btn-1">Home</button>
              </Link>
            </li>
            <li>
              <Link to="/signup">
                <button class="btn-1">Sign Up</button>
              </Link>
            </li>
            <li>
              <Link to="/login">
                <button class="btn-1">Log In</button>
              </Link>
            </li>
            <li>
              <Link to="test">
                <button class="btn-1">test</button>
              </Link>
            </li>
            <li>
              <Link to="settings" class="btn-r">
                <button class="btn-1">Settings</button>
              </Link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
}


import React from "react";
import { Link } from "react-router-dom";

export default function Navbar() {
  return (
    <nav id="nav" class="navbar">
      <div class="col-3 navbar">
        <div class="nav1">
          <ul>
            <li>
              <Link className="nav-link" to="/">
                <button class="btn-1">Home</button>
              </Link>
            </li>
            <li>
              <Link to="/signup">
                <button class="btn-1">Sign Up</button>
              </Link>
            </li>
            <li>
              <Link to="/login">
                <button class="btn-1">Log In</button>
              </Link>
            </li>
            <li>
              <Link to="/Test">
                <button class="btn-1">Test</button>
              </Link>
            </li>
            <li>
              <Link to="/Test2">
                <button class="btn-1">Test2</button>
              </Link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
}