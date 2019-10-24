class Donut < Product
    def self.sort_by_cheapest
        Donut.all.sort_by{|product| product.price}
    end

    def self.sort_by_most_expensive
        Donut.sort_by_cheapest.reverse
    end

    def self.sort_by_rating 
        Donut.all.max_by(3){|product| product.average_rating}
    end
end