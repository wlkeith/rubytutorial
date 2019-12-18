# symbols are very basic ruby objects
# syntax: :ruby

# no matter where a symbol appears in your program, it always has the same value
# symbols are more efficient than strings because they always mean the same thing,
# whereas two strins with same contents are 2 different objects.
"string".object_id
"string".object_id # these are different objects w/ different ids

:symbol.object_id
:symbol.object_id # these have the same ids

# if you run this command in irb, it shows all of the commands as strings
symbols_as_strings = Symbol.all_symbols.map { |x| x.to_s }

# you can make symbols with spaces if you want
spacey = :"cats and dogs"

# you can make symbols with interpolation as well
value = :and
symbol = :"cats #{value} dogs"

# note that string operations are not available on symbols
# and that symbols cannot be concatonated


