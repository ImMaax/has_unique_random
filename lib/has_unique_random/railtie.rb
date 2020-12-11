# frozen_string_literal: true

module HasUniqueRandom
  class Railtie < ::Rails::Railtie
    initializer 'has_unique_random.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
  end
end
