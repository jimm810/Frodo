require File.dirname(__FILE__) + '/../spec_helper'

describe ContractType do
  it "should be valid" do
    ContractType.new.should be_valid
  end
end
