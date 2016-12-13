require 'pry'
def nyc_pigeon_organizer(data)
 pigeon_list = {}
 data.each do |attribute, value_hash|
   value_hash.each do |attribute_keys, pigeon_array|
     pigeon_array.each do |bird|
       if pigeon_list[bird] == nil
         pigeon_list[bird] = {attribute => [attribute_keys.to_s]}
       elsif pigeon_list[bird][attribute] == nil
         pigeon_list[bird][attribute] = [attribute_keys.to_s]
       else
         array_of_stuff = pigeon_list[bird][attribute]
         #binding.pry
         array_of_stuff.push(attribute_keys.to_s)
       end
     end
   end
 end
 pigeon_list
end
