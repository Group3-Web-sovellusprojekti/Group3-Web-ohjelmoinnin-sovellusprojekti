import "bootstrap/dist/css/bootstrap.min.css";

import "./App.css";
import React, { useState } from "react";
import { ReactChild } from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./components/Home";
import Signup from "./components/Signup";
import Login from "./components/Login";
import Navbar from "./components/Navbar";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Settings from "./components/Settings";

import V1 from "./Chart/V1";
import V2 from "./Chart/V2";


function App() {
  const [isUserloggedIn, setIsUserLoggedIn] = useState(false);
  const [userJwt, setUserJwt] = useState(null);
  const [userName, setUsername] = useState(null);

  return (
    <>
      <div>
        <Header userLoggedIn={userJwt != null} uName={userName} />
      </div>
      <Navbar />
      <div className="container">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/signup" element={<Signup />} />
          <Route
            path="/login"
            element={
              <Login
                login={(newJWT) => setUserJwt(newJWT)}
                uname={(newUname) => setUsername(newUname)}
              />
            }
          />
          <Route path="/settings" element={<Settings />} />

          <Route path="/V1" element={<V1 />} />
          <Route path="/V2" element={<V2 />} />
        </Routes>
      </div>
      <Footer />
    </>
  );
}

export default App;
