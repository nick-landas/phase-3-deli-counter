require 'pry'

katz_deli = []

def line(array)
    if array.length == 0
        puts 'The line is currently empty.'
    else
        array_of_people = array.map.with_index(1) do |name, index| 
            "#{index}. #{name}"
        end
        string = array_of_people.join(' ')
        puts "The line is currently: #{string}"
    end
end

def take_a_number(array, name)
    array << name
    place_in_line = array.length
    puts "Welcome, #{name}. You are number #{place_in_line} in line."
end

def now_serving(array)
    if array.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array[0]}."
        array.shift
    end
end

line([])
line(['Shemp', 'Larry', 'Moe'])
take_a_number(katz_deli, 'Roxanne')
take_a_number(katz_deli, 'Jane')
line(katz_deli)
take_a_number(katz_deli, 'Layla')
now_serving(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
line(katz_deli)