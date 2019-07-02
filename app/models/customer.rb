class Customer
  attr_reader :first_name, :last_name
  @@all=[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all<<self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant,content,rating)
    Review.new(self,restaurant,content,rating)
  end
  
  def num_reviews
    Review.all.select {|review| review.customer==self}.size
  end
  
  def restaurants
    array=Review.all.select do |review|
      review.customer==self
    end
     new_array=array.collect do |review|
       review.restaurant
    end
    new_array.uniq
  end

  def self.find_by_name(fullname)
    @@all.find do |customer|
      customer.first_name==fullname.split(" ")[0]&& customer.last_name==fullname.split(" ")[1]
    end
  end

  def self.find_all_by_first_name(first_name)
    @@all.select do |customer|
      customer.first_name==first_name
    end
  end
  
  def self.all_names
    @@all.collect do |customer|
       customer.full_name
    end
  end
end
