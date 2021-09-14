class BubbleSort
  def self.sort(arr)
    my_arr = arr.dup

    loop do
      i = 0
      swap = false
      # Do not want to use .each when we are updating the array
      while i < my_arr.length - 1
        if my_arr[i] > my_arr[i+1]
          # Swap
          swap ||= true
          swap_elements(my_arr, i, i+1)
        end

        i += 1
      end
      break unless swap
    end

    return my_arr
  end

  private

  def self.swap_elements(arr, index_1, index_2)
    tmp = arr[index_2]
    arr[index_2] = arr[index_1]
    arr[index_1] = tmp
  end
end
