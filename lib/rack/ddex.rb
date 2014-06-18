require "rack"
require "json"
require "ddex"

module Rack
  class DDEX
    HEADERS = {"Content-Type" => "application/json"}.freeze

    def call(env)
      begin
        obj  = ::DDEX.read(env["rack.input"])
        json = JSON.dump(obj.to_hash)

        [200, HEADERS, [json]]
      rescue => e
        code = e.is_a?(::DDEX::DDEXError) ? 400 : 500        
        json = JSON.dump(:error => e.message)

        [code, HEADERS, [json]]
      end
    end
  end
end

