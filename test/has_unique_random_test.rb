# frozen_string_literal: true

require 'test_helper'

module HasUniqueRandom
  class Test < ActiveSupport::TestCase
    test "truth" do
      assert_kind_of Module, HasUniqueRandom
    end
  end
end
