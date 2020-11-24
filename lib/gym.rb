class Gym
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map {|membership| membership.lifter }.uniq
  end

  def lifters_name
    self.lifters.map {|lifter| lifter.name}
  end

  def lift_total
    self.lifters.sum {|lifter| lifter.lift_total}
  end
  
end
