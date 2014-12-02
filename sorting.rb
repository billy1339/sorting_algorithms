require 'benchmark'

class Array

  def bubble_sort
    counter = 0
    arr_end = self.length - 1
    while counter < arr_end
      current_position = 0
      while current_position < arr_end
        if self[current_position] > self[current_position + 1]
          temp = self[current_position + 1]
          self[current_position + 1] = self[current_position]
          self[current_position] = temp
        end
        current_position += 1
      end
      counter += 1
    end
    self
  end

  def selection_sort
    sorted_array = []
    temp_array = self
    arr_end = temp_array.length
    counter = 0
    while counter < arr_end
      index = temp_array.index(temp_array.min)
      sorted_array << temp_array.slice!(index)
      counter += 1
    end
    sorted_array
  end

  def quick_sort
  end

  def insertion_sort
  end

  def merge_sort
  end

end


array = [3,6,14,2, 25,5,1]
array2 = [1,3,6,14,2, 25,5]
puts "bubble"
puts array2.bubble_sort
puts "\nselection"
puts array2.selection_sort

