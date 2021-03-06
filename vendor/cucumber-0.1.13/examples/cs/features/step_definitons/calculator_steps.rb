require 'spec'
$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'Calculator'

Before do
  @calc = Demo::Calculator.new
end

Given "I have entered $n into the calculator" do |n|
  @calc.push n.to_i
end

When /I press add/ do
  @result = @calc.Add
end

Then /the result should be (.*) on the screen/ do |result|
  @result.should == result.to_i
end

Then /the result class should be (\w*)/ do |class_name|
  @result.class.name.should == class_name
end
