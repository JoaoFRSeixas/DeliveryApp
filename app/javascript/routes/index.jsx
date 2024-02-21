import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import View from "../components/test/view"

export default (
  <Router>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/avaliability" element={<View />} />
    </Routes>
  </Router>
);