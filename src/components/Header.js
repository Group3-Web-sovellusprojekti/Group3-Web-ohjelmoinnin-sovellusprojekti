import React from "react";
import { Link } from "react-router-dom";
export default function Header(props) {
  return (
    <div className="header">
      <h1>
        Nettisivu :D
        <a className="isloggedin">
          {props.userLoggedIn ? " Logged in" : " Not logged in"}
        </a>
      </h1>
    </div>
  );
}
