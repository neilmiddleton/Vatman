require 'spec_helper'

describe Vatman do
  it 'should return details of a valid VAT number' do
    v = Vatman::Check.new("GB", 800634860)
    v.should be_valid
    v.name.should == 'KYANMEDIA LTD'
    v.address.should == "171 HIGH STREET\nGUILDFORD\nSURREY\n\n\nGU1 3AJ"
  end

  it 'should accept string formatted numbers' do
    v = Vatman::Check.new("GB", "800  6348    60") 
    v.should be_valid
  end

  it 'should reject invalid VAT numbers' do
    v = Vatman::Check.new("GB", 12345679)
    v.should_not be_valid
  end

  it 'should reject invalid string vat numbers' do
    v = Vatman::Check.new("GB", "abcdefghijkl")
    v.should_not be_valid
  end
end
