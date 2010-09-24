require 'soap/wsdlDriver'

class Vatman
  def initialize(country, number)
    @country, @number = country, number
  end
  
  def name
    get_variable(:name)
  end
  
  def address
    get_variable(:address)
  end
  
  def valid?
    get_variable(:valid) == 'true'
  end
  
  private
  
    def response
      @response ||= SOAP::WSDLDriverFactory.new('http://ec.europa.eu/taxation_customs/vies/checkVatService.wsdl').create_rpc_driver.checkVat(:countryCode => @country, :vatNumber => @number)
    end
  
    def get_variable(var)
      response.send(var) if response.respond_to?(var)
    end
end