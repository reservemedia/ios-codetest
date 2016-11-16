# Reserve's iOS Code Test
For this code test you will create a native iOS application that loads a remote list of reservations and displays them in a list.

## Getting Started
We have provided a starter project with the Core Data stack set up and CocoaPods initialized.

### Installation
If you do not have CocoaPods installed, simply run `sudo gem install cocoapods` in Terminal. We use [Mogenerator](https://github.com/rentzsch/mogenerator) to help create our model classes. If you don't have Mogenerator, you can [download it here](http://rentzsch.github.io/mogenerator/). It's not required for this code test but is recommended.

## Guidelines
The application should use Core Data and CocoaPods with any open source libraries of your choosing to assist you in completing the task. It is preferred that your solution utilize Storyboards and Auto Layout, but this is not a requirement. The project should reflect your strong grasp of the components and classes of the iOS SDK.

### User Interface
When it becomes active, the app should load the JSON available at (INSERT_URL). This JSON provides reservations with guests for a range of days. The UI should provide:
* A date selector which only displays dates that actually have reservations.
* When a date is selected, the reservation list should filter to only show reservations for that particular date.
* The reservations should be sorted by party size by default but can also be sorted alphabetically by guest last name or reservation time.
* The reservations should display as individual cells within the list and should include guest name, party size, reservation time, and table.

### Creative License
You may add any additional features you think would improve the experience or presentation of the test description, but these additions should not alter the basic parameters described above.

The finished app should be clear and easy operate for any non‐technical user without additional explanation.

## Criteria for Review
We will be reviewing your submission based on the following:
* Does it function as expected?
* Code style and organization.
* Proper usage of libraries and frameworks.

## Project Delivery
Please provide this Xcode project with your solution zipped via email. Do not host publicly.
