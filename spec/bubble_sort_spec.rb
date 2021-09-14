require 'spec_helper'
require 'support/shared_examples/sort_examples'

RSpec.describe BubbleSort do
  include_examples 'sort', BubbleSort
end
