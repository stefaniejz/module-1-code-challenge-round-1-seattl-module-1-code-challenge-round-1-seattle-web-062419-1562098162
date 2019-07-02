class Restaurant
  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end

  def customers
     array=self.reviews.collect do |review|
      review.customer
     end
     array.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant==self
    end
  end

  def average_star_rating
    num=self.reviews.size.to_f
    total_rating=0
    self.reviews.each do |review|
      total_rating += review.rating 
    end
    if num==0
      return 0
    else
      return total_rating.to_f/num
    end
  end

  def longest_review
    longgest_review=self.reviews.first.content.size
    longgest_content=self.reviews.first.content
    self.reviews.each do |review|
      if review.content.size>longgest_review
        longgest_review=review.content.size
        longgest_content=review.content
      end
    end
    longgest_content
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name==name
    end
  end
end
