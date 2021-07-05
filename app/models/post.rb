class Post < ApplicationRecord

    belongs_to :user
    has_many :favorites, dependent: :destroy
    
    validates :title, presence: true
    validates :tag, presence: true
    validates :content, presence: true
end
