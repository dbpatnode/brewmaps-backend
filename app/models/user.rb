class User < ApplicationRecord
    has_many :favorites
    has_many :notes
    has_many :favorited_breweries, through: :favorites, source: :breweries
    has_many :noted_breweries, through: :notes, source: :breweries

    has_secure_password
    validates :username, uniqueness: true
end
