import React from "react";
import Popup from "reactjs-popup";
import "reactjs-popup/dist/index.css";

export default function Settings() {
  return (
    <div class="col-6">
      <div className="Settings">
        <h3>User settings</h3>
        <ul class="ul-2">
          <li>
            <a href="#">Sign out</a>
          </li>
          <li>
            <Popup
              trigger={<a class="del-user">Delete User</a>}
              position="right"
            >
              <div>
                <a> Are you sure? </a>
                <button> Delete </button>
              </div>
            </Popup>
          </li>
        </ul>
      </div>
    </div>
  );
}
