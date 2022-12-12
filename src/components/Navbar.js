import React from "react";
import { Link } from "react-router-dom";

export default function Navbar() {
  return (
    <ul className="ul-1">
      <li>
        <Link className="nav-link" to="/">
          <button className="btn-1">Home</button>
        </Link>
      </li>
      <li>
        <Link to="/signup">
          <button className="btn-1">Sign Up</button>
        </Link>
      </li>
      <li>
        <Link to="/login">
          <button className="btn-1">Log In</button>
        </Link>
      </li>
      <li>
        <Link to="test">
          <button className="btn-1">test</button>
        </Link>
      </li>

      <li>
        <Link to="settings" className="btn-r">
          <button className="btn-1">Settings</button>
        </Link>
      </li>
    </ul>
  );
}
