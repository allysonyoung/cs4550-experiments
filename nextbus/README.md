# Nextbus

The purpose of this experiment is to determine if the essential data pertaining to the realtime bus tracking and nearby stop suggestion features are obtainable using the MBTA API.

### Running this Locally
Clone this repo and cd into this `nextbus` directory. Run the `iex -S mix` to run the elixir shell and execue the following commands...
  * NEARBY STOPS BY LOCATION - `Nextbus.get_nearby_stops(lat, lon)`
    * lat - latitude value of location
    * lon - longitude value of location
    * ex. `Nextbus.get_nearby_stops(42.346961, -71.076640)`
  * ROUTES BY STOP - `Nextbus.get_routes(stop_id)`
    * stop_id - integer id representing bus station
    * ex. `Nextbus.get_routes(11384)`
  * NEXT BUS BY ROUTE - `Nextbus.get_nextbus(route_id, direction)`
    * route_id - integer id representing a bus route
    * direction - integer representation of bus direction (0 = outbound, 1 = inbound)
    * ex. `Nextbus.get_nextbus(10, 1)`
