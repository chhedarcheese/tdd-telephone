require 'spec_helper'
require_relative 'pizza'

describe Pizza do

  let :name {"kickass pizza"}
  let :description {"super saucy"}
  let :time_baked {4}
  # let :topping_name {"PEPPERONI!"}
  # let :required_bake_time {5}
  # let :topping_time_baked {2}
  # let :topping {Topping.new(topping_name, required_bake_time, topping_time_baked}
  # let :toppings {[topping]}
  let :pizza  {Pizza.new(name, description, time_baked)}

  describe "#initialize" do
    it "should have a name as its first argument" do
      expect{Pizza.new(description)}.to raise_error (ArgumentError)
    end

    it "should have a description as its second argument" do
      Pizza.new(name, description).should be_an_instance_of Pizza
    end

    it "should have time_baked default to 0" do
      Pizza.new(name, description).time_baked.should eq 0
    end

    it "has many toppings" do
      Pizza.new(name, description).toppings.should be_an_instance_of Array
    end
  end

end
