# DeliveryApp


In order, with it you can: (1) check the availability of send a product to the end customer (2) generate a new order, (3) check its status and (4) generate invoices.

Prerequisites:

* Ruby version: "3.1.2"
* Rails version: "7.0.4"

* Configuration
  (1) Clone this repo;
  (2) Install and use ruby "3.1.2"
  (3) Run bundle install at directory
  (4) Run rails db:create
  (4) Set REACT_APP_GOOGLE_MAPS_KEY where it is called.
  (5) Run bin/dev


Relevant information:

- All services returns are performed by example JSONs, as the API-key is not available. The examples were taken from documentation.
Some PUT and POST methods were simplified as GET within Rails services, as it is not possible to connect the API.

- Information obtained from these endpoints has not been handled in rendering yet 😁

