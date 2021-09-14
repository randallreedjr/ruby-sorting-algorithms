class SelectionSort
  def self.sort_in_place(arr)
    i = 0
    while i < arr.length
      minimum_index = find_smallest_element(arr, i, arr.length)
      if minimum_index != i
        swap_elements(arr, i, minimum_index)
      end
      i += 1
    end
  end

  private

  def self.find_smallest_element(arr, start_range, end_range)
    minimum = arr[start_range]
    minimum_index = start_range
    i = start_range + 1
    while i < end_range
      if arr[i] < minimum
        minimum = arr[i]
        minimum_index = i
      end
      i += 1
    end
    return minimum_index
  end

  def self.swap_elements(arr, index_1, index_2)
    tmp = arr[index_2]
    arr[index_2] = arr[index_1]
    arr[index_1] = tmp
  end
end
