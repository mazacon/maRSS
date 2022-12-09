// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

if (document.getElementById('typewriter')) {
  var tw = document.getElementById('typewriter');

  var typewriter = new Typewriter(tw, {
    loop: true,
    delay: 70,
  });
    
  typewriter
    .pauseFor(1500)
    .typeString('<strong>An RSS reader web application</strong>')
    .pauseFor(3000)
    .deleteChars(29)
    .pauseFor(200)
    .typeString('<strong>made with Ruby on Rails 7</strong>')
    .pauseFor(3000)
    .deleteChars(25)
    .pauseFor(200)
    .typeString('<strong>by Maz for backstitch.io</strong>')
    .pauseFor(3000)
    .deleteChars(24)
    .pauseFor(200)
    .start();
}
