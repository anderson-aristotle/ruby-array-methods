# frozen_string_literal: true

module ArrayMethods
  module Labs
    # a class that represents the first 10 Fibonacci numbers
    class Fibonacci
      attr_reader :fibs
      def initialize
        @fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
      end

      def product_of_elements; end

      def product_of_even_elements; end

      def sum_of_odd_elements; end
    end
  end
end
