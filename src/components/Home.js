import React from "react";
import { Link } from "react-router-dom";

export default function Home(props) {
  return (
    <div className="col-6">
      <div>
        User login status:{props.userLoggedIn ? " logged in" : "Not logged in"}
      </div>
      <div className="Home">
        <h1>Blaa blaa</h1>
        <p>
          Blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa
          blaa blaa blaa blaa.
        </p>
      </div>
    </div>
  );
}
