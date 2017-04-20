require "sifter/version"

module Sifter
  def self.sift(num)
    result = (2..num).to_a
    2.upto(Math::sqrt(num)).each {|e| result.reject! {|i| i%e == 0}}
    result
  end
end
