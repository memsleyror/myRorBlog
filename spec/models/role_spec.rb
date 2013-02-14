require 'spec_helper'

describe Role do
  
  before :each do
  	@role = Role.new
  end	

  describe "#new" do
  	it "returns a role object" do
  		@role.should be_an_instance_of Role
  	end
  end

  describe "#hello" do
  	it "should return hello" do
  		@role.hello.should eq("Hello")
  	end
  end

end
