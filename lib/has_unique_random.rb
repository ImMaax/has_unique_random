# frozen_string_literal: true

require "has_unique_random/railtie"
require "has_unique_random/model_additions"

module HasUniqueRandom
  def self.generate_unique_random(length=8)
    SecureRandom.alphanumeric length
  end
end
