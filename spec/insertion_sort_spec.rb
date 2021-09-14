require 'spec_helper'
require 'support/shared_examples/sort_in_place_examples'
require 'support/shared_examples/sort_examples'

RSpec.describe InsertionSort do
  include_examples 'sort', InsertionSort
  include_examples 'sort in place', InsertionSort
end
