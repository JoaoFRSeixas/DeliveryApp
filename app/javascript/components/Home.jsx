import React from "react";
import { Link, Form } from "react-router-dom";
import SearchLocationTo from "./search_box/search_box_to";


export default () => {
  return (
    <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
      <div className="jumbotron jumbotron-fluid bg-transparent">
        <div className="container secondary-color">
          <h1 className="display-4">DeliveryApp</h1>
          <p className="lead">
            Click button and check our product availability!
          </p>
          <hr className="my-4" />
          <SearchLocationTo />
          <Link
            to="/availability"
            className="btn btn-lg custom-button"
            role="button"
          >
            Query availability
          </Link>
        </div>
      </div>
    </div>
  );
};