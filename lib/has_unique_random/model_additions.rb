module HasUniqueRandom
  module ModelAdditions
    def has_unique_random(attribute, length: 8)
      before_create do
        begin
          id = HasUniqueRandom.generate_unique_random(length)
        end while self.class.exists?("#{attribute}" => id)

        send("#{attribute}=", id)
      end
    end
  end
end
