# frozen_string_literal: true

require 'spec_helper'

describe 'fibonacci' do
  it 'prints the results of the various fibonacci methods' do
    results = <<-HEREDOC
2227680
44
544
    HEREDOC
    expect{
      require 'fibonacci'
    }.to output(results).to_stdout
  end
end

## Example tests using class Fibonacci
## needs fibonacci.rb to be rewritten in modular fashion,
## for example if it were written as:
#
# class Fibonacci
#
# def initialize
#   @fibonacci = [...]
# end
#
# def product_of_elements
#   @fibonacci.reduce {|el| ...}
# end
# 
# etc ...
#
# describe 'fibonacci.rb' do
#   let(:fibonacci) { ArrayMethods::Labs::Fibonacci.new }
#   let(:fibs) { [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] }
# 
#   it "returns the first 10 numbers of the fibonacci sequence' do" do
#     expect(fibonacci.fibs).to eq fibs
#   end
# 
#   describe '#product_of_elements' do
#     it 'calculates the product of elements within fibs, excluding 0' do
#       expect(fibonacci.product_of_elements).to eq 2_227_680
#     end
#   end
# 
#   describe '#sum_of_odd_elements' do
#     it 'sums the odd elements within fibs' do
#       expect(fibonacci.sum_of_odd_elements).to eq 44
#     end
#   end
# 
#   describe '#product_of_even_elements' do
#     it 'calculates the product of even elements within fibs' do
#       expect(fibonacci.product_of_even_elements).to eq 544
#     end
#   end
# end
