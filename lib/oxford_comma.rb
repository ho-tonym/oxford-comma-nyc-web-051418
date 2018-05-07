def oxford_comma(array)

  word = String.new
  if array.size == 1
    array.join
  elsif array.size == 2
    array.join(" and ")
  elsif array.size == 3
    "#{array[0]}, #{array[1]}, and #{array[2]}"
  else
    original_array = array
    array.pop
      for element in array
        word << "#{element}, "
      end
    word << "and #{original_array[-1]}"
    return word
  end
end
