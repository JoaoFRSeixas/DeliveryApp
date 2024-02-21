import React, { useEffect, useRef, useState } from "react";

const REACT_APP_GOOGLE_MAPS_KEY = 'AIzaSyD8fy2aAdQCyjZNjWVgDVkb3QlPUvLNpfc';

let autoComplete;

const baseUrl = 'http://localhost:3000';

const endpoint = '/api/v1/queries/create';

const complete_url = baseUrl + endpoint;

const loadScript = (url, callback) => {
  let script = document.createElement("script");
  script.type = "text/javascript";

  if (script.readyState) {
    script.onreadystatechange = function () {
      if (script.readyState === "loaded" || script.readyState === "complete") {
        script.onreadystatechange = null;
        callback();
      }
    };
  } else {
    script.onload = () => callback();
  }

  script.src = url;
  document.getElementsByTagName("head")[0].appendChild(script);
};

const SearchLocationTo = ({ }) => {
  const [query, setQuery] = useState("");
  const autoCompleteRef = useRef(null);

  const handleScriptLoad = (updateQuery, autoCompleteRef) => {
    autoComplete = new window.google.maps.places.Autocomplete(
      autoCompleteRef.current,
      {
        // types: ["(cities)"],
        componentRestrictions: { country: "BRA" },
      }
    );

    autoComplete.addListener("place_changed", () => {
      handlePlaceSelect(updateQuery);
    });
  };

  const handlePlaceSelect = async (updateQuery) => {
    try {
      const addressObject = await autoComplete.getPlace();
  
      const query = addressObject.formatted_address;
      updateQuery(query);
      console.log({ query });
  
      const latLng = {
        lat: addressObject?.geometry?.location?.lat(),
        lng: addressObject?.geometry?.location?.lng(),
      };
  
      console.log({ latLng });
  
      const response = await fetch(complete_url, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(
          { query: {
            currency_code: JSON.stringify(latLng)
            }
          }
        ),
      });
  
      if (response.ok) {
        console.log('Query created');
      } else {
        console.error('Rails Error');
      }
    } catch (erro) {
      console.error('Request Error:', erro);
    }
  };
  

  useEffect(() => {
    loadScript(
      `https://maps.googleapis.com/maps/api/js?key=${REACT_APP_GOOGLE_MAPS_KEY}&libraries=places`,
      () => handleScriptLoad(setQuery, autoCompleteRef)
    );
  }, []);

  return (
    <div className="search-location-input-to">
      <input
        ref={autoCompleteRef}
        className="form-control"
        onChange={(event) => setQuery(event.target.value)}
        placeholder="Where is the final destination for your product?"
        value={query}
      />
    </div>
  );
};

export default SearchLocationTo;