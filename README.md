# DeliveryApp
App created during the technical interview stage for a last-mile logistics company.
In order, with it you can: (1) check the availability of send a product to the end customer (2) generate a new order, (3) check its status and (4) generate invoices.

⚠️The responses that should come from the API are fixed in the code, since the key is invalid. Therefore, I chose to render all the JSON on the pages, and not separate it into different items and components.


Requirements:

Install yarn

React: "18.2.0"

Ruby version: "3.1.2"

Rails version: "7.0.4"

* Configuration
  1. Clone this repo;
  2. Install and use ruby "3.1.2" -> https://www.ruby-lang.org/en/documentation/installation/
  3. Run `bundle install` at directory.
  4. Run `rails db:create`
  5. [OPTIONAL] Set `REACT_APP_GOOGLE_MAPS_KEY` where it is called to use Google Maps Search bar.
  6. Run `bin/dev`


Relevant information:

- All services returns are performed by example JSONs, as the API-key is not available. The examples were taken from documentation.
Some PUT and POST methods were simplified as GET within Rails services, as it is not possible to connect the API.

- Information obtained from these endpoints has not been handled in rendering yet 😁

