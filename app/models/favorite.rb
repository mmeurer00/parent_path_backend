class Favorite < ApplicationRecord
  belongs_to :post
  belongs_to :user
  belongs_to :resources
end
