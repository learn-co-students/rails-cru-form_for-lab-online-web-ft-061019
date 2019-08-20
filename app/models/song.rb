class Song < ApplicationRecord
    belongs_to :Artist
    belongs_to :Genre

end
