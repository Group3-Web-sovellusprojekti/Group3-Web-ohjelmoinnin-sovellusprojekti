import React from "react";
import Popup from "reactjs-popup";
import "reactjs-popup/dist/index.css";
import axios from "axios";

export default function Settings() {
  return (
    <div>
      <h2>Delete user</h2>

      <div>
        Username <br />
        <input type="text" name="username" />
        <button type="submit">Delete</button>
      </div>
    </div>
  );
}
