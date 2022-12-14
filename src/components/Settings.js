import React from "react";
import "reactjs-popup/dist/index.css";
import { Navigate, useNavigate } from "react-router-dom";
import axios from "axios";

export default function Settings() {
  const handleLogOut = () => {
    localStorage.clear();
    console.log("user log out");
  };

  const handleDelUser = () => {
    console.log("user delete");
  };

  return (
    <div className="col-6">
      <ul className="">
        <li>
          <button className="logOut" onClick={handleLogOut}>
            Log out
          </button>
        </li>
        <li>
          <button className="del-user" onClick={handleDelUser}>
            Delete user
          </button>
        </li>
      </ul>
    </div>
  );
}
