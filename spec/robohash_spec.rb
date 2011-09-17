require 'spec_helper'
describe Robohash do
  it "Should return the correct version string" do
    Robohash::VERSION.should == "0.0.3"
  end

  it "Should return the correct version " do
    Robohash.Version.should == "0.0.1"
  end

  it "Should get the default number of images to download" do
    Robohash.default_num.should eql(3)
  end

  it "Should set the default number of images to download" do
    Robohash.default_num=150
    Robohash.default_num.should eql(150)
  end

  it "Should get the default directory of images to download to" do
    Robohash.default_directory.should eql("robo_hash_images")
  end

  it "Should set the default directory of images to download to" do
    Robohash.default_directory="images/robots"
    Robohash.default_directory.should eql("images/robots")
  end

   #it "Should download the default number of images to download to default directory" do
   # Robohash.get_images
    #Dir.exists?('robo_hash_images').should eql(true)
 # end

end

