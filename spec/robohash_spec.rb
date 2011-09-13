require 'spec_helper'
describe Robohash do
  it "Should return the correct version string" do
    Robohash::VERSION.should == "0.0.1"
  end
  
  it "Should get the default number of images to download" do
     Robohash.default_num.should eql(3)
   end
   
  it "Should get the default number of images to download" do
    Robohash.default_num.should eql(3)
  end
  
end