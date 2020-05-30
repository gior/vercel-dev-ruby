# vercel-dev-ruby
A dev server for ruby serverless functions, following [Vercel](https://vercel.com) api requirements.

Run locally your serverless functions, the Vercel way.
Ruby support is currently in Alpha stage, and the CLI is missing vc-dev for Ruby.

__Waiting for advanced Ruby support, this server provides `vc-dev` features__

## Installation

Install WEBrick 
 - If you use bundler: add `gem 'webrick` to your Gemfile and run `bundle install`,
 - otherwise: `gem install webrick`.

Copy `server.rb` to e.g. `<your_project_folder>/dev`

Copy the example function `api/testwr.rb` or wite your own inside `<your_project_folder>/api`

## Usage

Run the server
 - if you use bundler: `bundle exec ruby dev/server.rb`,
 - otherwise: `ruby dev/server.rb`.
 
This will start a vc-dev-like server on port 8000 (you may configure this port in `server.rb`). 

### Example
Call `localhost:8000/api/testwr`. The server will execute the handler function in `/api/testwr.rb`




