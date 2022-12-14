import "./App.css";
import React from "react";
import { ReactChild } from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./components/Home";
import Signup from "./components/Signup";
import Login from "./components/Login";
import Navbar from "./components/Navbar";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Settings from "./components/Settings";
import Test from "./Chart/Test";
import { useState } from "react";

function App() {
  const [isUserloggedIn, setIsUserLoggedIn] = useState(false);
  const [userJwt, setUserJwt] = useState(null);

  return (
    <>
      <Header userLoggedIn={userJwt != null} />

      <div className="container">
        <Navbar />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/signup" element={<Signup />} />
          <Route
            path="/login"
            element={<Login login={(newJWT) => setUserJwt(newJWT)} />}
          />
          <Route path="/settings" element={<Settings />} />
          <Route path="/Test" element={<Test />} />
        </Routes>
      </div>
      <Footer />
    </>
  );
}

export default App;
