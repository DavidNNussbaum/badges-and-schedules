# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    new_array = []
    array.each do |name|
        new_array << badge_maker(name) 
    end
    new_array    
end

def assign_rooms(array)
    # conf_hash = {}
    array.each_with_index.map {|name, index|
    # [7].all? { |number| number >= 7 }
    #    conf_hash.merge {|name, index|}
    # conf_hash.map {|k,v| {label: k, values: [[v]]}
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"} 
end

def printer(attendees)
    batch_badge_creator(attendees).each {|badge| puts badge}

    assign_rooms(attendees).each {|place| puts place}
end
