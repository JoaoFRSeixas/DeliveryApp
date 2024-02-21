import React, { useState, useEffect } from 'react';
import TextField from '@material-ui/core/TextField';
import Autocomplete from '@material-ui/lab/Autocomplete';
import { Link, Form } from "react-router-dom";

const CreateJob = () => {

  const [data, setData] = useState([]);
  const [error, setError] = useState(null);

  const baseUrl = 'http://localhost:3000';

  const endpoint = '/api/v1/queries/availability';

  const complete_url = baseUrl + endpoint;

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch(complete_url);

        if (!response.ok) {
          throw new Error('Error fetching data from the API');
        }

        const receivedData = await response.json();

        setData(receivedData);
      } catch (error) {
        console.error('Error fetching data:', error.message);
        setError('Error fetching data. Please try again later.');
      }
    };

    fetchData();
  }, []);
  const myOptions = data.map((item) => `Slot: ${item.id}, Start: ${item.from}, End: ${item.to}, Operational Model: ${item.operational_model}`);
  console.log(myOptions)


  return (

    <><div>
      {error && <p>{error}</p>}
      <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
       <div className="jumbotron jumbotron-fluid bg-transparent">
        <div className="container secondary-color">
          <p className="lead">
          Select the availability for your slot! </p>
        <div>
        <hr className="my-4" />
          <Autocomplete
            autoSelect
            options={myOptions}
            renderInput={(params) => (
              <TextField {...params}
                variant="filled"
                label="Select your option"/>
          )} />

           <Link
            to="/create_job"
            className="btn btn-lg custom-button"
            role="button"
          >
            Create your order!
          </Link>
         </div>
        </div>
    </div>
  </div>
</div></>

  );
};

export default CreateJob;
