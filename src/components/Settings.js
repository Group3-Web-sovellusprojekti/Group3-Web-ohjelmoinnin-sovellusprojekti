import React from "react";
import Popup from "reactjs-popup";
import "reactjs-popup/dist/index.css";
import axios from "axios";

export default function Settings() {
  /*
  const deleteUser = async (id) => {
    await axios.delete("http://localhost:8080/user/");
  };
*/
  return (
    <div class="col-6">
      <div className="Settings">
        <h3>User settings</h3>
        <ul class="ul-2">
          <li>
            <a class="a1" href="#">
              Sign out
            </a>
          </li>
          <li>
            <Popup
              trigger={<a class="del-user">Delete User</a>}
              position="right"
            >
              <div>
                <h3>Delete user</h3>
                <a>Password: </a>
                <input></input>
                <button class="btn-del"> Delete user </button>
              </div>
            </Popup>
          </li>
        </ul>
      </div>
    </div>
  );
}
