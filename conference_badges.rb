# Write your code here.
def badge_maker name  
"Hello, my name is #{name}."
end

def batch_badge_creator names_array
    names_array.map do |name|
        "Hello, my name is #{name}."
    end
end

def assign_rooms names_array
    rooms = []
    names_array.each_with_index do |name,index|
       rooms.push("Hello, #{name}! You'll be assigned to room #{index+1}!")
    end
    rooms
end

def printer names_array
   names = batch_badge_creator(names_array)
   names.each do |name|
    puts name
   end
    statements = assign_rooms(names_array)
    statements.each do |statement|
    puts statement
   end
end

printer(["John","Doe","Muji"])
