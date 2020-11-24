class Lifter
  attr_reader :name, :lift_total

  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map {|membership| membership.gym }.uniq
  end

  def total_cost
    self.memberships.sum {|membership| membership.cost}
  end

  def new_gym(gym, cost)
    Membership.new(cost, self, gym)
  end

  
end
