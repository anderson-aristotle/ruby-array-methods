### Way to frame array methods in Ruby:
Remember when we had these javascript array methods that were expecting a callback with certain arguments? This is the same thing we are doing here.

Write on the board a Javascript map method vs. a Ruby select method, and say what they are expecting.

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

