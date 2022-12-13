import React from "react";
import "reactjs-popup/dist/index.css";
import axios from "axios";

export default function Settings() {
  return (
    <div>
      <div>
        Username <br />
        <input type="text" name="username" />
        <button type="submit">Delete</button>
      </div>
    </div>
  );
}
