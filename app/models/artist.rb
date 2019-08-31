class Artist < ApplicationRecord
    has_many :songs, dependent: :destory
    has_many :genres, through: :songs
end
