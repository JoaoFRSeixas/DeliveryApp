
import { Button } from "bootstrap";
import React from "react";
import { Link, Form } from "react-router-dom";
import ModalComponent from "./SuccessModal"


export default () => {


  return (
    <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
      <div className="jumbotron jumbotron-fluid bg-transparent">
        <div className="container secondary-color">
          <p className="lead">
            Put your Invoice Number
          </p>
          <hr className="my-4" />
          <label>Number:</label>
          <input type="text" name="name" className="form-control"/>

          <ModalComponent />

        </div>
      </div>
    </div>
  );
};