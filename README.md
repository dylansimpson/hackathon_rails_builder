# Hackathons!

I love a good hackathon and this rails builder comes equipped with my favorite development environment so I can get up to speed faster. This builder creates an environment with:
  
  * A Rails app with Postgres
  * Devise for creating accounts
  * Omniauth for Facebook, Twitter and Google b/c who likes signing up?
  * Twitter and Facebook (Koala) gems so your app can expand its reach 
  * Stripe and Dwolla integration because charging money is a good thing
  * Slim for templating
  * Bootstrap for styling
  * Ember-Rails (b/c Javascript MV* frameworks are cool)
  * My Use_JS_Please Gem, b/c of my aforementioned love of Javascript frameworks
  * Rspec, Capybara, Fabrication and Jasmine test suite
  * Heroku Configuration and Deployment
  * E-mail through Sendgrid
  * Git init and git commit, it's up to use to choose Bitbucket or Github

## How To Use It

To use this requires two steps:
First, copy the 'hackathon.rb' file to the file where you run 'rails new myapp'.

Second, isntead of doing 'rails new myapp' enter this into your CLI intsead:

  rails new blog -b hackathon.rb

## Please fork and push!

I would love to see what other environments people use.

## License

Copyright (c) 2013 by Nicholas Shook

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.