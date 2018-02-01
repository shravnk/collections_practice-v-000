def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort{|a,b| b <=> a}
end

def sort_array_char_count(array)
  array.sort{|a,b| a.length <=> b.length}
end

def swap_elements(array)
  second = array[1]
  third = array[2]
  array[1] = third
  array[2] = second
  array
end

def reverse_array(array)
  array_copy = array.reverse{|a,b| b <=> a}
end


def kesha_maker(array)
  kesha = []
  i = 0
    array.each do |item|
      kesha[i] = item[0..1] + "$" + item[3..-1]
      i += 1
    end
  kesha
end

def find_a(array)
  only_a = []
  only_a = array.select{|word| word.start_with?("a")}
  only_a
end

def sum_array(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  sum
end

def add_s(array)
  array.each_with_index.collect do |word, index|
    if index == 1
      word
    else
      word << "s"
    end
  end
end
