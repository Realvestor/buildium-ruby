require 'rest-client'
require 'json'
require 'uri'
require 'pry'

module Buildium
  module Resources
    class Base
      def self.request(&block)
        begin
          yield if block_given?

          environment = ::Buildium.environment
          api_key = ::Buildium.api_key

          @url = "https://#{environment}.buildium.com/v1#{@path}"
          # TODO : Figure out where client secret comes from?
          @headers = @headers.merge({
            'x-buildium-client-id' => api_key,
            'x-buildium-client-secret' => ""
          })

          @data = @data || {}
          @method = @method || :get

          response = RestClient::Request.execute(
            method: @method,
            url: @url,
            headers: headers,
            data: @data,
          )
          parsed_response = JSON.parse(response)

          if response.code.eql?(200) || response.code.eql?(201)
            return parsed_response
          end

          if response.code.eql?(400)
            return 'Unable to process the request due to malformed request syntax or invalid parameters'
          end

          if response.code.eql?(401)
            return "The API key couldn't be authorized."
          end

          if response.code.eql?(403)
            return "The supplied credentials don't have permissions to access the resource"
          end

          if response_code.eql?(404)
            return "Resource not found"
          end

          if response_code.eql?(415)
            return 'The Content-Type header on the request is missing or contains an unsupported value.'
          end

          if response_code.eql?(422)
            return 'The request data could not be used to fulfill the request'
          end
        rescue RestClient::BadRequest => e
          JSON.parse(e.response.body)
        end
      end
    end
  end
end
