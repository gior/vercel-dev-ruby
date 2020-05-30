require 'webrick'

# HEYDEV! Edit module name and action_on() body in order to write your own function
module TestWR
  class Handler < WEBrick::HTTPServlet::AbstractServlet
    def do_GET request, response
      status, content_type, body = self.class.action_on request

      response = {'Content-Type': 'application/json; charset=utf-8'}
      response.status = status
      response['Content-Type'] = content_type
      response.body = body
    end

    def self.action_on request
      return {status: 200, "Content-Type": 'text/plain', body: 'you got a page' }
    end
  end
end

# Avoids name conflicts when multiple functions are present in the /api folder
Handler = Proc.new do |req, res|
  return TestWR::Handler # HEYDEV! Refer to your custom module
end