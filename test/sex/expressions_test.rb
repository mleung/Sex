require File.dirname(__FILE__) + '/../test_helper'

class ExpressionsTest < Test::Unit::TestCase

  context "Starts with Expression" do
    
    should "be the correct regexp" do
      assert_equal starts_with_exp("http://"), Regexp.new("^http:\/\/")
    end
    
  end

end
