[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Ruby Array Methods

We'll explore Ruby's [Array](https://ruby-doc.org/core-2.4.1/Array.html) type
and some of its methods. We'll also have a look at a few ways in which Ruby
makes list processing (iterating through arrays) a bit more fun for the
developer.

List processing is at the core of most web development tasks, so practicing it
in Ruby (and later, comparing it to JavaScript), will illuminate the logical
features of list processing tasks in addition to implementation specifics.

## Prerequisites

-   [JavaScript Array Methods](https://git.generalassemb.ly/ga-wdi-boston/js-array-iteration-methods)
-   [Ruby Array](https://git.generalassemb.ly/ga-wdi-boston/ruby-array)

## Objectives

By the end of this, developers should be able to:

-   Iterate through arrays by using Ruby array methods.
-   Pass inline code as blocks to Array instance methods.
-   Pass method names as symbols to Array instance methods.

## Preparation

1.  [Fork and clone](https://git.generalassemb.ly/ga-wdi-boston/meta/wiki/ForkAndClone)
    this repository.
1.  Make a new branch, `training`.
1.  Install dependencies with `bundle install`.

## Array Methods

Both JavaScript and Ruby have types that represent lists. In both languages,
these types are called "arrays". In Ruby, `Array` is a class that holds methods
for arrays, and in JavaScript, `Array.prototype` is an object that holds
  methods for arrays.

Let's compare the list of methods for Array in each language. Here is some
documentation for reference:

-   [Array.prototype - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/prototype)
-   [Class: Array (Ruby 2.4.1)](https://ruby-doc.org/core-2.4.1/Array.html)

## Demo: `map`

Let's explore Ruby's `map` method.

```ruby
# in pry
fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
```

How can we use map to multiply each member of `fibs` by two in Ruby?

```ruby
# fibs.map { |fib| ... } for single-line, or

fibs.map do |fib|
  # something here
end
```

## Code Along: `reduce`

Let's use `reduce` to calculate the sum of elements in `fibs`.

> In JavaScript, we used a function to control the behavior of Array methods.
> In Ruby, we use a block ( `{ |p| ... }` for one line blocks, `do ... end` for
> multi-line blocks).

## Lab: Fibonacci Calculations

In Ruby, write
 scripts, in `lib/fibonacci.rb`.

-   calculates the product of elements of `fibs` (excluding zero).
-   calculates the sum of the odd elements of `fibs`
-   calculates the product of the even elements of `fibs`(excluding zero).

## Code-Along: People

Let's use the script `bin/people_array.rb` to explore Array methods in Ruby.
The data in the objects we'll be processing comes from the comma separated
values (CSV) file `data/people.csv`.

The Person objects we'll test against have properties/methods that align with
the headers in `data/people.csv` plus the method `age`.

## Lab: People

Use the `bin/people_array.rb` script to

-   Count all the people who are older than you (or just pick an age).
-   Count all the people who are younger than you (or just pick an age).
-   Count all the people whose first name and last name start with the same
    letter.
-   Calculate the average age of all the people.

## Code-Along: Set Operations

The results of the Ruby Array methods `-`, `&`, `|`, and `flatten` aren't
easily reproducible in JavaScript.

-   [`-`](https://ruby-doc.org/core-2.4.1/Array.html#method-i-2D) is an Array
    Difference
-   [`&`](https://ruby-doc.org/core-2.4.1/Array.html#method-i-26) is a [Set Intersection](https://goo.gl/XmIIcX)
-   [`|`](https://ruby-doc.org/core-2.4.1/Array.html#method-i-7C) is a [Set Union](https://goo.gl/ePuzW2)
-   [`flatten`](https://ruby-doc.org/core-2.4.1/Array.html#method-i-flatten)
    reduces dimension

We'll explore these methods using `bin/sets_etc.rb`.

## Bonus Challenge: Return of the Word Count

Remember our [text analysis
exercise](https://git.generalassemb.ly/ga-wdi-boston/js-reference-types#code-along-analyze-text)
from way-back?

Let's implement `normalize_words`, `unique_words`, `word_count`, and
`word_frequencies` in `lib/string.rb`

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
