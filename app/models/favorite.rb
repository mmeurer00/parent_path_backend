class Favorite < ApplicationRecord
  belongs_to :post, optional: true 
  belongs_to :user
  belongs_to :resources, optional: true 
end
