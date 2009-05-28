require File.dirname(__FILE__) + '/../spec_helper'

describe Sex::Expressions, "starts_with_expession" do

	it "should be the correct Regexp" do
	  starts_with_exp("http://").should eql(Regexp.new("^http:\/\/"))
	end

end

describe Sex::Expressions, "ends_with_expession" do

	it "should be the correct Regexp" do
	  ends_with_exp("bleh").should eql(Regexp.new("bleh$"))
	end

end

describe Sex::Expressions, "contains_exp" do

	it "should be the correct Regexp with case sensivity" do
	  contains_exp("letters", true).should eql(/letters+?/)
	end

	it "should be the correct Regexp with case insensitivity" do
	  contains_exp("LETTERS").should eql(/LETTERS+?/i)
	end

end