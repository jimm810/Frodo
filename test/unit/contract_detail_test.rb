require 'test_helper'

class ContractDetailTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ContractDetail.new.valid?
  end
end
