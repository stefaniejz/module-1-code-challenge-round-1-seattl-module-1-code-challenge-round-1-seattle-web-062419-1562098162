class Review
    attr_accessor :customer,:restaurant,:content,:rating
    @@all=[]

    def initialize(customer,restaurant,content,rating)
        @customer=customer
        @restaurant=restaurant
        @content=content
        @rating=rating
        @@all<<self
    end

    def self.all
        @@all
    end
  
end

