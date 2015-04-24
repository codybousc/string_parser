
class String
define_method(:string_parse) do |user_word|
  user_string = self
  split_string = user_string.split(" ")
  new_arr = []
  split_string.each do |word|
    if word == user_word
    new_arr.push(user_word)
    end
  end
  new_arr
  end
end




#Issues
#Include? method. Need something else
#may need to run .each on an array of arrays?
