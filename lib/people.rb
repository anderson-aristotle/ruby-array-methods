# frozen_string_literal: true

require 'csv'
require_relative 'person.rb'

@people = []
CSV.foreach('data/people.csv',
            headers: true,
            header_converters: ->(h) { h.downcase.to_sym }) do |person|
              @people << Person.new(person.to_hash)
            end

def people_older_than(age)
  # your code here
end

def people_younger_than(age)
  # your code here
end

def people_with_same_first_last_start_letter
  # your code here
end

def average_age
  # your code here
end
