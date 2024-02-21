import React, {useEffect, useState } from 'react';
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';
import {Routes, Route, useNavigate} from 'react-router-dom';

const FinalModal = () => {
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
        Yes!
      </Button>

      <Modal show={show} onHide={handleClose}>
        <Modal.Header>
          <Modal.Title>Success!</Modal.Title>
        </Modal.Header>
        <Modal.Body> Your invoice has been successfully created </Modal.Body>
        <Modal.Footer>
          <Button className="btn btn-lg custom-button"  onClick={navigateHome}>
            Close!
          </Button>
        </Modal.Footer> 
      </Modal>
    </>
  );
};

export default FinalModal;
