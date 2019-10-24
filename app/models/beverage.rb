class Beverage < Product
    def self.sort_by_cheapest
        Beverage.all.sort_by{|product| product.price}
    end

    def self.sort_by_most_expensive
        Beverage.sort_by_cheapest.reverse
    end
end