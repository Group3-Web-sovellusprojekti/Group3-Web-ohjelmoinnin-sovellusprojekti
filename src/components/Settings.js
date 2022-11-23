import React from "react";

export default function Settings() {
  function deleteUser() {}

  return (
    <div class="col-6">
      <div className="Settings">
        <h3>User settings</h3>
        <ul class="ul-2">
          <li>
            <a href="#">Sign out</a>
          </li>
          <li>
            <a class="del-user" href="#">
              Delete user
            </a>
          </li>
        </ul>
      </div>
    </div>
  );
}
