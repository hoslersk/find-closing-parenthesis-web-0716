require 'pry'
def find_closing_parenthesis(sentence, open_position)
  counter = 0
  open_p_count = 0
  # close_p_count = 0
  while counter < sentence.length do
    if counter >= open_position
      if sentence[counter] == "("
        open_p_count += 1
        # counter += 1
      elsif sentence[counter] == ")"
        # close_p_count += 1
        if open_p_count == 1
          return counter
        else
          open_p_count -= 1
        end
        # counter += 1
      end
    end
    counter += 1
  end
end
