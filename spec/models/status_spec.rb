require File.dirname(__FILE__) + '/../spec_helper'

describe Status do
  it "should be valid" do
    Status.new.should be_valid
  end
end
