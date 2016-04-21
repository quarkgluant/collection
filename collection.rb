 ### challenge 1
data = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]
# level 1 Write code that'll output the names (and only the names) in order by ascending age
data.inject([]){|res_tab, item_tab| res_tab << item_tab[0]}.sort.each{|name| puts name}
data.sort.each{|tab_item| puts tab_item[0]}

# level 2 Output the name with the age, like Juan (24)
data.sort.each{|tab_item| puts "#{tab_item[0]} (#{tab_item[1]})"}

# Level 3: If there are multiple people tied with the same age, put them in alphabetical order
data.inject([]) do |res_tab, tab_item|
	res_tab << tab_item[]
end


# Level 4: Write code to automatically build a hash with the age as the key and an array of names as the value 
# (all the people who are that age). e.g. {24 => ['Juan', 'Steve', 'Jill']...}
res = Hash.new{|hash, key| hash[key]= []}
Hash[*data.flatten].each do |key, val|
	if res[val].nil?
		res[val] = key
	else
		res[val] << key
	end
end
res

# 2: State Capitals
states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

# * Level 1: Write some code which given a state name ("Oregon") outputs
#   its capital ("Salem")
state_name = "Colorado"
capitals[states[state_name]]

# * Level 2: Handle the case when a state's information is not known by
#   returning "Unknown"
if capitals[states[state_name]].nil?
	puts "Unknow"
else
	puts capitals[states[state_name]]
end

# * Level 3: Now let's go the other way. Given a capital name ("Denver"),
#   return the state name for which it is the capital ("Colorado")
capital_name = "Denver"
states.invert[capitals.invert[capital_name]]

### 3: Scrabble Scoring

# Start with this hash:

# ```
scores = {
  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
  "E"=>1, "F"=>4, "G"=>2, "H"=>4,
  "I"=>1, "J"=>8, "K"=>5, "L"=>1,
  "M"=>3, "N"=>1, "O"=>1, "P"=>3,
  "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
  "U"=>1, "V"=>4, "W"=>4, "X"=>8,
  "Y"=>4, "Z"=>10
}

### Level 1: Letter Scoring an Array
# Write code to output the score for the letters in an array like this:
# word = ['H', 'E', 'L', 'L', 'O']
# Which, when run, outputs this:
# H has the value 4
# E has the value 1
# L has the value 1
# L has the value 1
# O has the value 1
# ```
word.each{|lettre| puts "#{lettre} has the value #{scores[lettre]}" }

### Level 2: Scoring Letters in a String
# Write code to output the score for the letters in a string like this:
word.each_char{|lettre| puts "#{lettre} has the value #{scores[lettre.upcase]}" }

#### Level 3: Scoring an Entire String
# Write code to output the total score for a string like this:
# word = "hello"
# Which, when run, outputs this:
# hello has the total score 8
acc = 0
word.each_char do |lettre|
	acc += scores[lettre.upcase]
end
puts "#{word} has the total score #{acc}" 
