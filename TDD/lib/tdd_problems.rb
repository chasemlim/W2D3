class Array
  
  def my_uniq
    my_hash = Hash.new(0)
    self.each { |el| my_hash[el] += 1 }
    my_hash.keys
  end
  
  def two_sum
    result_arr = []
    self.each_with_index do |num, idx|
      self.each_with_index do |num2, idx2|
        next if idx2 <= idx
        result_arr << [idx, idx2] if num + num2 == 0
      end
    end
    result_arr
  end
end

def my_transpose(array)
  new_arr = [[],[], []]
  
  array.each do |arr|
    arr.each_with_index do |num, idx2|
      new_arr[idx2] << num 
    end
  end
  new_arr
end

def stock_picker(array) # 
  max = 0
  min = 0
  difference = 0
  
  array.each_with_index do |num1, idx1|
    array.each_with_index do |num2, idx2|
      next if idx2 <= idx1
      if num2 - num1 > difference
        difference = num2 - num1
        min, max = num1, num2
      end
    end
  end
  [min, max]
end