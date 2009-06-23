require File.dirname(__FILE__) + '/../spec_helper'

describe Sex::StringPatternExtensions, "starts_with?" do
	
	before(:all) do
	  @url = "http://www.sex.com"
	end
	
	it "should return true for a valid condition" do
		@url.starts_with?("http://").should eql(true)
	end
	
	it "should return false for an invalid condition" do
		@url.starts_with?("sex").should eql(false)
	end
		
end

describe Sex::StringPatternExtensions, "ends_with?" do
	
	before(:all) do
	  @url = "http://www.sex.com"
	end

	it "should return true for a valid condition" do
		@url.ends_with?(".com").should eql(true)
	end
	
	it "should return false for an invalid condition" do
	  @url.ends_with?(".tv").should eql(false)
	end
	
end

describe Sex::StringPatternExtensions, "contains?" do
	
	before(:all) do
	  @phrase = "sex is hot"
	end
	
	it "should return true for a valid condition" do
	  @phrase.contains?('hot').should eql(true)
	end

	it "should return false for an invalid condition" do
	  @phrase.contains?('pumpernickel').should eql(false)
	end
	
	it "should return false if case is set, and the case does not match" do
	  @phrase.contains?('HOT', true).should eql(false)
	end
	
end

describe Sex::StringPatternExtensions, "contains_a_number?" do
  
	it "should return true if a number is present" do
	  "ABC123".contains_a_number?.should eql(true)
	end
	
	it "should return false if it's a purely alpha sequence" do
		"this does not have a number".contains_a_number?.should eql(false)
	end

end

describe Sex::StringPatternExtensions, "extract_grouped_numbers" do

  it "should return an array of numbers" do
    "123 comes before 456".extract_grouped_numbers.should eql(["123", "456"])
  end

	it "should return an empty array for strings with no numbers" do
	  "this is alpha only, isn't it?".extract_grouped_numbers.should eql([])
	end
end

describe Sex::StringPatternExtensions, "number_of_alpha_characters" do
  
	it "should return the proper number of characters" do
		pending do
			"abcdefghijklmnopqrstuvwxyz1".number_of_alpha_characters.should eql(26)
		end
	end

end

describe Sex::StringPatternExtensions, "number_of_numeric_characters" do
  
	it "should return the proper amount of numbers"

end

describe Sex::StringPatternExtensions, "remove_markup" do
  
  it "should totally remove any markup tags" do
    "<bold>Text</bold>".remove_markup.should eql("Text")
  end
  
end
