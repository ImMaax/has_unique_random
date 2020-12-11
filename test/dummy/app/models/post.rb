class Post < ApplicationRecord
  has_unique_random :url_id, length: 4
end
