class User < ApplicationRecord

    has_secure_password
    
    has_many :posts
    has_many :favorites, dependent: :destroy
    has_many :favorites, through: :resources
    has_many :favorites, through: :posts

    validates :username, presence: true
    validates :email, presence: true

end
