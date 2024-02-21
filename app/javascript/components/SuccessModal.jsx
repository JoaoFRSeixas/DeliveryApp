import React, {useEffect, useState } from 'react';
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';
import {Routes, Route, useNavigate} from 'react-router-dom';
import FinalModal from "./FinalModal"

const ModalComponent = () => {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);
  const navigate = useNavigate();

  const navigateHome = () => {
    navigate('/');
  };

  return (
    <>
      <Button className="btn btn-lg custom-button" onClick={handleShow}>
        Create!
      </Button>

      <Modal show={show} onHide={handleClose}>
        <Modal.Header closeButton>
          <Modal.Title>Confirm Invoice?</Modal.Title>
        </Modal.Header>
        <Modal.Body>Are you sure? After that you won't be able to change the invoice number. </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleClose}>
            Close!
          </Button>
         < FinalModal></FinalModal>
        </Modal.Footer>
      </Modal>
    </>
  );
};

export default ModalComponent;

// Put a success message