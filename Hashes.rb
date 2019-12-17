# hashes are dictionary-like collections of unique keys & their values. similar to arrays, but hashes
# allow you to use any object type as the key to a value, wheras arrays just use integer indexes.

# create a hash:
empty_hash = Hash.new
empty_hash.class  # class = Hash; empty_hash equiv to {}; size is 0

# assigning values to hash
hash = { :one => "uno", :two => "dos" }   # size = 2
another_hash = { one: "uno", two: "dos" }

# accessing hash values: same no matter which method used for assignment
hash[:one]  # returns "uno"
hash[:two]  # returns "dos"
hash[:not_a_value]  # returns nil

# fetch method
hash = { :one => "uno" }
hash.fetch(:one)  # returns "uno"

# changing hash values
hash = { :one => "uno", :two => "dos" }
hash[:one] = "eins"


# unordered hashes (same values in different order) are equivalent.

# testing hash values:
hash.values.size  # equiv to 2
hash.values.include?("uno")   # true
hash.keys.include?(:one)  # true
hash.values.class   # is Array; so is hash.keys.class

# combining hashes
hash = { "jim" => 53, "amy" => 20, "dan" => 23 }
new_hash = hash.merge({ "jim" => 54, "jenny" => 26 })
# results in:
# {"jim"=>54, "amy"=>20, "dan"=>23, "jenny"=>26}


# another hash assignment syntax
hash = Hash.new([])
hash[:one] << "uno"
hash[:two] << "dos"

hash[:one]  # returns ["uno", "dos"]
hash[:two]  # returns ["uno", "dos"]
hash[:three]  # returns ["uno", "dos"]

