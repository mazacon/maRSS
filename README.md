# maRSS: An RSS reader written in Rails 7! 

## About
A rapid prototype project to convey MVC web application competency. 

## Dependencies:
- Ruby 3.1.3 (May run with ruby >= 2.7; untested)
- bundler
- SQLite3

## Installation
`bundle`<br>
`bin/rails db:migrate`

## running locally(dev)
`bin/rails s`

## Usage:
Intuitive for the most part. Here are some RSS links I’ve tested it with:
- https://www.nasa.gov/rss/dyn/breaking_news.rss
- https://www.nasa.gov/rss/dyn/educationnews.rss
- https://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss

…and here a [huge rss link](https://airedale.futurecdn.net/feeds/en_feed_3a953301.rss-fse?site=space). This will slow the application down signifigantly, as the requests to get the XML files are synchronous and blocking. 

## Known bugs:
- typewriter stops working after using back button or redirection

## TODOs for a v1
- mobile view
- max input chars
- delete users?
- check links more thoroughly
- async requests
- tests
- fix abuse of inline styling
- better styling

## Credits
- logo created using https://www.adobe.com/express/create/logo
favicon
- background gradients made using https://cssgradient.io/ & https://uicolorpicker.com/
- typewriter effect on landing page: https://github.com/tameemsafi/typewriterjs
- CSS lib: https://getbootstrap.com
