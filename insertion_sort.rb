class InsertionSort
  def self.sort(arr)
    my_arr = arr.dup
    new_arr = []

    my_arr.each_with_index do |element, index|
      i = 0
      while i < new_arr.length
        if element < new_arr[i]
          new_arr.insert(i, element)
          break
        end
        i += 1
      end
      # if element has not been inserted yet, insert at end
      if new_arr.length <= index
        new_arr.append(element)
      end
    end

    return new_arr
  end

  def self.sort_in_place(arr)
    # skip i = 0, since we don't know where to move it
    i = 1
    while i < arr.length
      j = 0
      element = arr[i]
      while j < i
        if element < arr[j]
          # insert at j
          shift_elements(arr, start_range: j, end_range: i)
          arr[j] = element
          break
        end
        j += 1
      end
      i += 1
    end
  end

  private

  def self.shift_elements(arr, start_range:, end_range:)
    i = end_range
    while i > start_range
      arr[i] = arr[i-1]
      i -= 1
    end
  end
end
