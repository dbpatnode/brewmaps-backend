class Brewery < ApplicationRecord
    has_many :favorites
    has_many :notes
    has_many :user_favorites, through: :favorites, source: :brewery
    has_many :user_notes, through: :notes, source: :brewery
end
