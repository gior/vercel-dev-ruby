# vercel-dev-ruby
A dev server for Ruby serverless functions, following [Vercel](https://vercel.com) api conventions.

Run locally your Ruby serverless functions, the Vercel way.
Ruby support is currently in Alpha stage, and the CLI is missing vc-dev for Ruby.

__Waiting for official advanced Ruby support, this server provides `vc-dev` features__

## Installation

Install WEBrick 
 - If you use bundler: add `gem 'webrick` to your Gemfile and run `bundle install`,
 - otherwise: `gem install webrick`.

Copy `server.rb` to e.g. `<your_project_folder>/dev`

Copy the example function `api/testwr.rb` or wite your own inside `<your_project_folder>/api`

__Notice__: when you write a new function, you must require and mount it in `server.rb`

## Usage

Run the server
 - if you use bundler: `bundle exec ruby dev/server.rb`,
 - otherwise: `ruby dev/server.rb`.
 
This will start a vc-dev-like server on port 8000 (you may configure this port in `server.rb`). 

### Example
Call `localhost:8000/api/testwr`. The server will execute the handler function in `/api/testwr.rb`




