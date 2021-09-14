require 'spec_helper'
require 'support/shared_examples/sort_in_place_examples'

RSpec.describe SelectionSort do
  include_examples 'sort in place', SelectionSort
end
