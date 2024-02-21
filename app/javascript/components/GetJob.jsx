import React, { useState } from 'react';
import Modal from './JobModal';

export default () => {
  const [modalIsOpen, setModalIsOpen] = useState(false);
  const [modalData, setModalData] = useState(null);

  const baseUrl = 'http://localhost:3000';

  const endpoint = '/api/v1/queries/query_job';
  const complete_url = baseUrl + endpoint;

  const openModal = () => {

    fetch(complete_url)
      .then((response) => response.json())
      .then((data) => {
        setModalData(JSON.stringify(data)); 
        setModalIsOpen(true);
      })
      .catch((error) => console.error('Erro ao obter dados:', error));
  };

  const closeModal = () => {
    setModalIsOpen(false);
  };

  return (
    <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
      <div className="jumbotron jumbotron-fluid bg-transparent">
        <div className="container secondary-color">
          <h2 className="display-4">Your order has been successfully created!</h2>
          <p className="lead">
          Click the button to check the order status and create an invoice.
          </p>
          <hr className="my-4" />
          <button className="btn btn-lg custom-button" onClick={openModal}>Check your Order!</button>
        <Modal isOpen={modalIsOpen} closeModal={closeModal} data={modalData} />
        </div>
      </div>
    </div>
  );
};

