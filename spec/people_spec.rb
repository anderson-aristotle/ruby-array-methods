# frozen_string_literal: true

require 'spec_helper'

describe 'people' do
  it 'prints the results of the various methods' do
    results = <<~HEREDOC
      2438
      1621
      780
      127
      38
    HEREDOC
    expect do
      require 'people'
    end.to output(results).to_stdout
  end
end

## Example tests using class People
## needs people.rb to be rewritten in modular fashion,
## for example if it were written as:
#
# class People
#
# def initialize
#   ....
# end
#
# def people_older_than(age)
#   ....
# end
#
# etc ...
# describe 'ArrayMethods::Labs::People' do
#  let(:people) { ArrayMethods::Labs::People.new }
#  let(:age) { 25 }
#
#  it 'collects Person objects from data/people.csv' do
#    expect(people.people.count).to eq 2438
#  end
#
#  it 'contains an array of Person objects' do
#    expect(people.people.sample).to be_an_instance_of Person
#  end
#
#  describe '#people_older_than(age)' do
#    it 'returns the count of people older than (age)' do
#      expect(people.people_older_than(age)).to eq 1613
#    end
#  end
#
#  describe '#people_younger_than(age)' do
#    it 'returns the count of people older than (age)' do
#      expect(people.people_younger_than(age)).to eq 785
#    end
#  end
#
#  describe '#people_with_same_first_last_start_letter' do
#    it 'returns count of people with same first and last name start letter' do
#      expect(people.people_with_same_first_last_start_letter).to eq 127
#    end
#  end
#
#  describe '#average_age' do
#    it 'returns average age of people' do
#      expect(people.average_age).to eq 38
#    end
#  end
# end
