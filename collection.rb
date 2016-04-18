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