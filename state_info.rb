require 'pry'

@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

#TASK 1

@states[:NC] = 'North Carolinna'
@states[:AL] = 'Alaska'

#TASK 2

@cities = {
  OR: ['Portland', 'Eugene'],
  FL: ['Miami', 'Orlando'],
  CA: ['Sacramento', 'Los Angles'],
  NY: ['NYC', 'Brooklyn', 'Harlem'],
  MI: ['Detroit', 'Kalamazoo']
}

#TASK 3

def describe_state(state)
	state = state.to_sym
	puts "#{state} is for #{@states[state]}. It has #{@cities[state].length} cities: #{@cities[state].join(", ")}"
end

describe_state('CA')

#TASK 4

@taxes = {
  OR: 5.4,
  FL: 5.2,
  CA: 6.3,
  NY: 6.9,
  MI: 7.8
}

#TASK 5

def calculate_tax(state, dollars)
	state = state.to_sym
	tax = @taxes[state].to_f/100
	puts "#{@taxes[state].to_s}% is the tax rate for #{@states[state]}. The tax amount on $#{dollars.to_s} is $#{(dollars*tax).round(2)}"
end

calculate_tax('CA', 256)

#TASK 6

def find_state_for_method(city)
	@cities.each do |stateCode, arry|
		if @cities[stateCode].include? city
			puts stateCode
		end
	end
end

find_state_for_method('Portland')