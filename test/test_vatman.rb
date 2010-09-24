class TestVatman < Test::Unit::TestCase

  def setup
  end
  
  def test_vatman
    v =  Vatman.new('GB', 802925148)
    assert v.valid?
    assert_equal 'MONOCHROME LIMITED', v.name
    assert_equal "SUITE K\nTHE PAVILLIONS\n1 WESTERN ROAD\nEPSOM\nSURREY\nKT17 1JG", v.address
    
    v =  Vatman.new('GB', 123456789)
    assert !v.valid?
    
    v =  Vatman.new('GB', "abcdefg")
    assert !v.valid?
  end
end