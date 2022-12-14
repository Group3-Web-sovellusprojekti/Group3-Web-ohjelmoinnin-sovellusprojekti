import React from "react";
import { Link } from "react-router-dom";

const Navbar = () => {
  const [open, setOpen] = React.useState(false);

  const handleOpen = () => {
    setOpen(!open);
  };

  const handleMenuOne = () => {
    // do something
    setOpen(false);
  };

  const handleMenuTwo = () => {
    // do something
    setOpen(false);
  };
  return (
    
      <div class="field-wrap">
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
            <Link to="V1">
              <button class="btn-1">V1</button>
            </Link>
          </li>
          <li>
            <Link to="V2">
              <button class="btn-1">V2</button>
            </Link>
          </li>
          <li>
            <Link to="settings" class="btn-r">
              <button className="btn-1" onClick={handleOpen}>
                Settings
              </button>
            </Link>
          </li>
        </ul>
      </div>
    
  );
};
export default Navbar;
