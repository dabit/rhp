# RHP

Because, admit it, you miss PHP!

RHP is a Rack extension used to serve .erb files, PHP style!

## Installation

Add this line to your application's Gemfile:

    gem 'rhp'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rhp

## Usage

Create a config.ru file:


    # config.ru

    require "rhp"

    run RHP::Server

Create a template file, for example `index.erb`

    <% # index.erb %>
    <% greeting = "Hello World" %>

    <html>
      <head>
        <title>RHP Rocks!</title>
      </head>
      <body>
        <h1><%= greeting %>
      </body>
    </html>

Start the server:

    rackup

Open a browser, go to `http://127.0.0.1:9292/index.erb`

## Why?

You only live once

## Are you serious?

No

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
