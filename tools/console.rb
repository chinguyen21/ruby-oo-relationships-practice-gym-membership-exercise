# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lf1 = Lifter.new("Raul", 26)
lf2 = Lifter.new("Angelo", 40)

gym1 = Gym.new("Flat")
gym2 = Gym.new("Iron")

mem1 = Membership.new(100, lf2, gym1)
mem2 = Membership.new(20, lf1, gym1)
mem3 = Membership.new(200, lf2, gym2)
mem4 = Membership.new(50, lf2, gym2)


binding.pry

puts "Gains!"
