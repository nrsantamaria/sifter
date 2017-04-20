require "spec_helper"
require 'prime'

describe Sifter do
  it "has a version number" do
    expect(Sifter::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end

describe "Sifter#sift" do
  before(:each) do
    @sifter = Sifter.new
  end

  it "takes a number and returns an array of numbers" do
    expect(@sifter.sift(15)).to be_an_instance_of(Array)
  end

  it "takes a number and returns an array of primes" do    
    expect(@sifter.sift(15).all? {|e| Prime.prime?(e)} )
  end

  it "takes a number and returns all primes lower than that number" do
    expect(@sifter.sift(14)).to match_array([2,3,5,7,11,13])
  end
end
