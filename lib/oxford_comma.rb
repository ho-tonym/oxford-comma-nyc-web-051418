def oxford_comma(array)
  counter = array.size
  word = String.new
  if array.size == 1
    array.join
  elsif array.size == 2
    array.join(" and ")
  elsif array.size == 3
    "#{array[0]}, #{array[1]}, and #{array[2]}"
  else
    while counter>0
      word << "#{element}, "
      counter -=1
    end
    word << "and #{array[array.size]}"
    return word
  end
end
