class Song < ApplicationRecord
    belongs_to :Artist, :Genre

end
