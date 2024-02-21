import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import CreateJob from "../components/CreateJob"
import GetJob from "../components/GetJob"
import CreateInvoice from "../components/CreateInvoice"



export default (
  <Router>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/availability" element={<CreateJob />} />
      <Route path="/create_job" element={<GetJob />} />
      <Route path="/get_job" element={<CreateInvoice />} />
      <Route path="/create_invoice" element={<CreateInvoice />} />
    </Routes>
  </Router>
);