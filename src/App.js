import "./App.css";
import React, {useState} from "react";
import { ReactChild } from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./components/Home";
import Signup from "./components/Signup";
import Login from "./components/Login";
import Navbar from "./components/Navbar";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Settings from "./components/Settings";
import Test from "./Chart/Test";
import Test2 from "./Chart/Test2";
import V1 from "./Chart/V1";
import V2 from "./Chart/V2";
import { setAuthToken, setUsername } from "./components/setAuthToken()";


function App() {

  const receivedJWT = localStorage.getItem("receivedJWT");
  if (receivedJWT) {
      setAuthToken(receivedJWT);
  }
  const uname = localStorage.getItem("uname");
  if (uname) {
      setUsername(uname);
  }

  return (
    <>
    <div>
      <Header />
    </div>  
      <Navbar />   
        <div className="container">        
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/signup" element={<Signup />} />
          <Route path="/login" element={<Login />} />
          <Route path="/settings" element={<Settings />} />
          <Route path="/Test" element={<Test />} />
          <Route path="/Test2" element={<Test2 />} />
          <Route path="/V1" element={<V1 />} />
          <Route path="/V2" element={<V2 />} />
        </Routes>
      </div>
      <Footer />
    </>
  );
}

export default App;
