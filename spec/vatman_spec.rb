require 'spec_helper'

describe Vatman do
  it 'should return details of a valid VAT number' do

    cl = {}
    resp = {}
    resp[:check_vat_response] = {}
    resp[:check_vat_response][:valid] = true
    resp[:check_vat_response][:name] = "KYANMEDIA LTD"
    resp[:check_vat_response][:address] = "171 HIGH STREET\nGUILDFORD\nSURREY\n\n\nGU1 3AJ"
    cl.stub(:request){resp}
    Savon::Client.stub(:new){cl}

    v = Vatman::Check.new("GB", 800634860)
    v.should be_valid
    v.name.should == 'KYANMEDIA LTD'
    v.address.should == "171 HIGH STREET\nGUILDFORD\nSURREY\n\n\nGU1 3AJ"
  end

  it 'should accept string formatted numbers' do
    cl = {}
    resp = {}
    resp[:check_vat_response] = {}
    resp[:check_vat_response][:valid] = true
    cl.stub(:request).with(:tnsl, :check_vat, :body => {:country_code => "GB", :vat_number => "800634860"}){resp}
    Savon::Client.stub(:new){cl}

    v = Vatman::Check.new("GB", "800  6348    60") 
    v.should be_valid
  end

  it 'should reject invalid VAT numbers' do
    cl = {}
    resp = {}
    resp[:check_vat_response] = {}
    resp[:check_vat_response][:valid] = false
    cl.stub(:request).with(:tnsl, :check_vat, :body => {:country_code => "GB", :vat_number => "12345679"}){resp}
    Savon::Client.stub(:new){cl}

    v = Vatman::Check.new("GB", 12345679)
    v.should_not be_valid
  end

  it 'should reject invalid string vat numbers' do
    cl = {}
    resp = {}
    resp[:check_vat_response] = {}
    resp[:check_vat_response][:valid] = false
    cl.stub(:request).with(:tnsl, :check_vat, :body => {:country_code => "GB", :vat_number => "abcdefghijkl"}){resp}
    Savon::Client.stub(:new){cl}
    
    v = Vatman::Check.new("GB", "abcdefghijkl")
    v.should_not be_valid
  end
end
