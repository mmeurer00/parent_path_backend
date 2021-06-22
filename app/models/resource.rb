class Resource < ApplicationRecord
    has_many :favorites, dependent: :destroy

    validates :name, presence: true
    validates :description, presence: true
end
