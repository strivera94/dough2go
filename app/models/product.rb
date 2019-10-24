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

    def self.sort_by_cheapest
        Product.all.sort_by{|product| product.price}
    end

    def self.sort_by_most_expensive
        Product.sort_by_cheapest.reverse
    end

    def self.sort_by_rating 
        Product.all.max_by(3){|product| product.average_rating}
    end
end
