class Product < ApplicationRecord
    has_many :reviews
    has_many :product_orders

    def ratings
        self.reviews.map{|review| review.rating}
    end

    def average_rating
        if ratings.size == 0
          return 0
        else
        ratings.sum/ratings.size
        end
    end

    def average_star_rating
        remaining_stars = 5 - average_rating.to_i
        (" ★ " * average_rating.to_i) + (" ☆ " * remaining_stars)

    end
end
