require 'benchmark'
require 'pry'
class Array

  def bubble_sort
    counter = 0
    arr_end = self.length - 1
    while counter < arr_end
      current_position = 0
      while current_position < arr_end
        if self[current_position] > self[current_position + 1]
          self.swap(current_position, current_position + 1)
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

  # def quick_sort
  #   greater_than = []
  #   less_than = []
  #   pivot = self[0]
  #   counter = 1
  #   while counter < self.length || self.length == 1
  #     if self[counter] < pivot
  #       less_than << self[counter]
  #     else
  #     # elsif self[counter] > pivot
  #       greater_than << self[counter]
  #     end
  #     counter += 1
  #   end
  #   puts [pivot] + less_than.quick_sort + greater_than.quick_sort
  # end

  def quick_sort(arr, left, right)
    if (right > left)
      pivot_ind = partition(arr, left, right)
      quick_sort(arr, left, pivot_ind-1)
      quick_sort(arr, pivot_ind+1, right)
    end
  end

  # def partition(arr, left_ind, right_ind)
  #   pivot = arr[left_ind]
  #   left_iterator = left #i
  #   right_iterator = right + 1; #j
  #   while true
  #     while (arr[++left_iterator] < pivot)
  #       if (left_iterator >= right_ind) break end
  #     end
  #     while (arr[--right_iterator] > pivot)
  #       if (right_iterator <= left_ind) break end
  #     end
  #     if (left_iterator >= right_iterator)
  #       break
  #     else
  #       self.swap(left_iterator, right_iterator)
  #     end
  #   end
  # end

  def insertion_sort
  end

  def merge_sort
  end

  # //might be able to do a,b = b,a for swaping

  def swap(left, right)
    # binding.pry
    temp = self[right]
    self[right] = self[left]
    self[left] = temp
    self
  end

end


array = [3,6,14,2, 25,5,1]
array2 = [1,3,6,14,2, 25,5]
puts "bubble"
puts array2.bubble_sort
# puts "\nselection"
# puts array2.selection_sort
# puts array.quick_sort
# puts array.swap(0,1)

