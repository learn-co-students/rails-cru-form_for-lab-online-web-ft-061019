class Genre < ApplicationRecord
    has_many :songs, dependent: :destory
    has_many :artists, through: :songs
end
