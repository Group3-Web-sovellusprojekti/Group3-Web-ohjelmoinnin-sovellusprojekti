import "./App.css";
import React from "react";
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

function App() {
  return (
    <>
      <Header />

      <div className="container">
        <Navbar />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/signup" element={<Signup />} />
          <Route path="/login" element={<Login />} />
          <Route path="/settings" element={<Settings />} />
          <Route path="/Test" element={<Test />} />
          <Route path="/Test2" element={<Test2 />} />
        </Routes>
      </div>
      <Footer />
    </>
  );
}

export default App;
