# Nextbus

The purpose of this experiment is to determine if the essential data pertaining to the realtime bus tracking and nearby stop suggestion features are obtainable using the MBTA API.

### Running this Locally
Clone this repo and cd into this `nextbus` directory. Run the `iex -S mix` to run the elixir shell and execue the following commands...
  * NEARBY STOPS BY LOCATION - `Nextbus.get_nearby_stops(42.346961, -71.076640)`
  * ROUTES BY STOP - `Nextbus.get_routes(11384)`
