require "vatman/version"
require 'savon'

module Vatman
  class Check

    def initialize(country, number)
      @country, @number = country, number.to_s.gsub(' ', '')
    end
  
    def valid?
      response[:valid]
    end

    def name
      response[:name]
    end

    def address
      response[:address]
    end

    private

      def response
        @response ||= get_vat_check
      end

      def get_vat_check
        client = ::Savon::Client.new("http://ec.europa.eu/taxation_customs/vies/checkVatService.wsdl")
        response = client.request :tnsl, :check_vat, :body => {:country_code => @country, :vat_number => @number}
        response.to_hash[:check_vat_response]
      end
  end
end

