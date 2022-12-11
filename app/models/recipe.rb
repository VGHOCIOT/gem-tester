class Recipe < ApplicationRecord
    has_many :ingredients
    has_many :steps
    belongs_to :cuisine

    enum popularity: {
        popular: 0,
        forgotten: 1
    }
end
