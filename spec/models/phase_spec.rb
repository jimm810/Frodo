require File.dirname(__FILE__) + '/../spec_helper'

describe Phase do
  it "should be valid" do
    Phase.new.should be_valid
  end
end
