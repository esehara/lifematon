require "lifematon/version"

class String
  def state!(mean)
    @lifes = {}
    @lifes = {"#{self}" => mean}
    return self
  end

  def life!(str)
    str.set_life_hash! @lifes
  end

  def state_merge(lifestrings)
    lifestrings.each do |lifestring|
      @lifes.merge! lifestring.to_life_hash
    end
    (@lifes.keys.join).set_life_hash! @lifes
  end

  def mean(str)
    @lifes[str]
  end

  def to_life_hash
    @lifes
  end

  def to_life
    by_life(self)
  end

  def by_life(lifestring)
    life_hash = lifestring.to_life_hash
    return "" if life_hash.nil?
    self.split("").map { |x| life_hash[x] }
  end

  protected
  def set_life_hash!(life_hash)
    @lifes = life_hash
    self
  end
end

module Lifematon
  # Your code goes here...
end
