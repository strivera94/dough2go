class Review < ApplicationRecord
  belongs_to :product
  belongs_to :customer

    def star_rating 
      remaining_stars = 5 - self.rating.to_i
      (" ★ " * rating) + (" ☆ " * remaining_stars)
    end
end
