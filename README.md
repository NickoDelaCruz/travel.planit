# _Travel Plan.It_

#### _An application that helps the user plan a vacation. {March 2, 2018}_

#### By _Masen Matthews, Nicko Dela Cruz, Emily Watkins, Hannah Lee_

## Description
  _This application allows a user to coordinate important details when planning a trip.  It allows the user to create a profile and plan for weather and activities across the duration of their vacation. Specifically, the application allows the user to enter their destination and a range of dates. The application uses that information to predict a forecast using the Darksky API. It also allows for personal input of activities, which are stored in a database using ActiveRecord_

## Specifications / User Expectations
1. User can enter their name and establish a profile associated with it
  * Input example: Hannah
  * Output example: "Hello, Hannah. Let's plan your trip!"

2. User can enter a destination name, date range, and longitude/latitude to establish a trip
  * Input example: "Seattle, 3/13/18-3/18/18, 47.6062, -122.3321"
  * Output example: "Seattle trip"

3. User can retrieve weather information in accordance with date range using the Darksky API
  * Input example: 3/13/18 - 3/18/18
  * Output example: "Moderate rain, cloudy skies, daytime highs in the mid 50's, nighttime lows in the lower 40s."

4. User can add activities to their trip
  * Input example: "Seattle trip" -> "Paddleboarding, hiking"
  * Output example: "Activities: Paddleboarding, hiking"

## Setup/Installation Requirements

* _Clone GitHub repository to desktop or desired directory_
* _Navigate to directory in terminal_
* _Ensure that Postgres is running and launch database using the 'rake db:migrate' command in the terminal_
* _Ensure that gems are installed by running "bundle" in the terminal_
* _Launch application in Sinatra by entering the "ruby app.rb" command_
* _Navigate to webpage in browser by navigating to localhost:4567_

## Known Bugs
*_Styling does not render correctly on the "trips" page. This is likely due to a browser or routing issue, but attempting to fix it falls outside of the scope of the project. Attempts to remedy the issue may occur at a later date._*

## Support and contact details

Support inquiries, ideas, suggestions, and other contact inquiries can be directed to any of the following individuals:
  Masen
    Email: masenmatthews@gmail.com.
    Github: masenmatthews
  Hannah
    GitHub: RunHannah
  Emily
    Github: emilywatkins
  Nicko
    GitHub: nickodelacruz

## Technologies Used

This application utilizes the following technologies:
  -Ruby
  -Sinatra
  -Active Record

### License

*MIT License

Copyright (c) [2018] [Masen Matthews, Nicko Dela Cruz, Emily Watkins, Hannah Lee]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.*

Copyright (c) 2018 **Masen Matthews, Nicko Dela Cruz, Emily Watkins, Hannah Lee**
