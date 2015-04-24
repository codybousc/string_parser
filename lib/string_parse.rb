
class String
  define_method(:string_parse) do |user_input_word|
    user_input_string = self
    split_string_input = user_input_string.split(" ")
    counter = 0
    split_string_input.each do |word|
      if word == user_input_word
        counter += 1
      else
        counter
      end
    end
    counter
  end
end
