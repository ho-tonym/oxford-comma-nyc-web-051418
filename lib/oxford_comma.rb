def oxford_comma(array)
  counter = array.length
  word = String.new
  if array.size == 1
    array.join
  elsif array.size == 2
    array.join(" and ")
  elsif array.size == 3
    "#{array[0]}, #{array[1]}, and #{array[2]}"
  else
    new_array = array.delete_at(-1)
    for element in new_array
      word << "#{element}, "
    end
    word << "and #{array[-1]}"
    return word
  end
end
