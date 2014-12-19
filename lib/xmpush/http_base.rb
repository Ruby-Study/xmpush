require 'net/http'
require 'faraday'

module Xmpush
  class HttpBase
    attr_accessor :secret_key, :url

    #支持的connection_adapter => [:net_http, :net_http_persistent, :typhoeus, :patron, :em_synchrony, :em_http, :excon, :rack, :httpclient]
    def initialize(url, secret_key = "", connection_adapter = :net_http)
      @connection_adapter = connection_adapter
      @secret_key = secret_key
      @url = url
    end

    def request(method, headers={})
      conn = Faraday.new(:url => url) do |faraday|
        faraday.request  :url_encoded
        faraday.response :logger
        faraday.adapter  @connection_adapter
      end
      resp = conn.send(method.downcase) do |req|
        req.headers['Content-Type'] = 'application/json'
        req.headers['Authorization'] = secret_key
        headers.each {|k,v| req.headers[k] = v}
      end
    end

  end
end
