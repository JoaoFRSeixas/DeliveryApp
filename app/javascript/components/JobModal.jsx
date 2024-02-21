import React from 'react';
import Modal from 'react-modal';
import CloseButton from 'react-bootstrap/CloseButton';
import { Link, Form } from "react-router-dom";

const CustomModal = ({ isOpen, closeModal, data }) => {
  const parsed_data = data;
  return (
    <Modal
      isOpen={isOpen}
      onRequestClose={closeModal}
      contentLabel="Informações"
    >
      <div>
        <CloseButton onClick={closeModal} />
      </div>
      <p className="display-4">Order Information</p>
      <hr className="my-4" />
      <p className='lead'>{parsed_data}</p>
      <Link
            to="/create_invoice"
            className="btn btn-lg custom-button"
            role="button"
          >
            Generate Invoice
          </Link>
    </Modal>
  );
};

export default CustomModal;
