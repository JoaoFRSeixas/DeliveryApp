import { useRef, useState } from 'react'
import Map from '../test/places'


function View() {

  const inputRef = useRef()
  const inputStyle= {
    boxShadow: 'inset 0 0 10px #eee !important',
    border: '2px solid #eee',
    width: '456px',
    height: '40px',
    marginLeft: '16px',
    borderRadius: '20px',
    fontWeight: '300 !important',
    outline: 'none',
    padding: '10px 20px',
    marginBottom: '10px',
  }


  const autoComplete = new window.google.maps.places.Autocomplete(
    inputRef.current,
  )


  autoComplete.addListener('place_changed', () => {
    const place = autoComplete.getPlace()
    if (!place.geometry || !place.geometry.location) {
        alert("this location not available")
    }
    if (place.geometry.viewport || place.geometry.location) {
        console.log(place.geometry.location)
    }
  })
  return (
    <div className="App">
        <label >Location</label>
        <input
          placeholder='type your location'
          ref={inputRef}
          style={inputStyle}
        />
      <Map/>
    </div>
  )
}

export default View