# CS4550 Project
This is the repo for our CS4550 project experiments. Our app is a tool that commuters in the Boston area can use. We will be using the MBTA API to query for bus arrivals and locations. The design doc outlining our plan of action and a detailed description of our app can be found in the `design-doc` file in the repo. Our three experiments are: alerts, next bus, and a JS front end framework experiment with the Google Maps API. 

## Experiments

### Alerts
Using the MBTA API, we are able to query information about alerts in terms of its header, severity, and affected services. This is currently built into an elixir application.

### JS Front End Framework (React)
We will be using React for our front end framework, and we will be using the Google Maps API to render maps and visualize anything we need for the features in our app. 

### Next Bus
Also using the MBTA API, we are able to query data about the nearby stops from a given location and provide supplemental information about where the buses are for that stop. This is currently built into an elixir application.
