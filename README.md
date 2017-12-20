# Reserve's iOS Code Test
For this code test you will create a native iOS weather app for iPad.

## Getting Started

### Designs
- [Sketch](https://sketchapp.com) - Free trial for Sketch available on their website. 

## Screens

### Main

- The main screen should have a header bar that has the current date.
- An initial empty state should be displayed when the list is empty.
- There should be a [FAB button](https://material.google.com/components/buttons-floating-action-button.html) on the bottom right of the screen. Tapping on it should open a modal that lets the user search for a city to add to their list.
- The forecast should display on the city card for every city in the list. The background of the city card should be dynamically created based on the city's current weather.
- Tapping on a city card should present the user to a city detail page.

### Search Modal

We recommend utilizing the [Google Places Autocomplete API](https://developers.google.com/places/web-service/autocomplete) to generate search results when a user starts typing in a city name. However, you have freedom to implement this however you like.

### City Detail

- The city detail screen should display additional weather information for the chosen city.
- The header on the detail screen should display the city name.
- Details about today's weather in the city should display along with a six-day forecast.
- The background color of the screen should be the same color that displays on the city card.

### Libraries
* [Forecast.io](https://developer.forecast.io/) - This is the weather API we
recommend. It provides weather data and allows for up to 1000 API calls per
day for free.

### Creative License
You may add any additional features you think would improve the experience or presentation of the test description, but these additions should not alter the basic parameters described above.

The finished app should be clear and easy operate for any non‐technical user without additional explanation.

## Criteria for Review
We will be reviewing your submission based on the following:
* Does it function as expected?
* Does the layout match the design provided?
* Code style and organization.
* Proper usage of libraries and frameworks.

## Project Delivery
Please provide the Xcode project with your solution zipped via email. Do not host publicly.
