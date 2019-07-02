require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
stef=Customer.new("stef","yan")
eric=Customer.new("eric","dong")
grace=Customer.new("grace","che")
sich=Customer.new("sich","liu")

aaa=Restaurant.new("aaa")
bbb=Restaurant.new("bbb")
ccc=Restaurant.new("ccc")
ddd=Restaurant.new("ddd")

r1=Review.new(stef,aaa,"12",1)
r2=Review.new(stef,bbb,"1234",2)
r3=Review.new(eric,bbb,"12345",3)
r4=Review.new(grace,bbb,"1234567",4)
r5=Review.new(grace,ccc,"123456789",5)
r6=Review.new(sich,ddd,"1234567891011",1)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line