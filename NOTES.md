### Way to frame array methods in Ruby:
Remember when we had these javascript array methods that were expecting a callback with certain arguments? This is the same thing we are doing here.

Write on the board a Javascript map method vs. a Ruby map method, and say what they are expecting.

### Block vs. Method in Ruby:

"Ruby blocks are not functions or methods. Unlike functions, they can't stand alone. A block is a chunk of code that can be invoked kind of like a function, but not quite like one: a block only appears adjacent to a function call such as .each"

You can add a .length (or similar methods) after a multi-line block OR an inline block. For example:

```
females = people.select do |person|
  person.gender === 'f'
end.length
```

#### OR

```
females = people.select { |person| person.gender == 'f' }.length
```
Show them anonymous block vs. named block, for example:
```
females = people.select do |person|
  person.gender === 'f'
end.length
```

#### Is the same as

```
def isFemale(person)
  person.gender === 'f'
end

females = people.select { |person| isFemale(person) }.length
```

### Set Operations

When showing them `|`, also show them what it looks like when we do `+` to illustrate the difference (being that `|` does not include duplicate values, whereas `+` does).

So `union = developers | consultants` vs. `concat = developers + consultants`

## Useful Diagrams

From Issue #32 ![Iteration Diagram](https://git.generalassemb.ly/storage/user/3667/files/280ede68-9487-11e7-8179-20976e1cdd04)
