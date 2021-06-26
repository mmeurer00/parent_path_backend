class Favorite < ApplicationRecord
  belongs_to :post, optional: true 
  belongs_to :user
  belongs_to :resource, optional: true 
end
