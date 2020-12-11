class Page < ApplicationRecord
  has_unique_random :url_id
end
