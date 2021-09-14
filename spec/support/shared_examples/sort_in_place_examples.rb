RSpec.shared_examples 'sort in place' do |klass|
  describe 'sort_in_place' do
    context 'when the array is empty' do
      it 'returns the array' do
        arr = []
        klass.sort_in_place(arr)

        expect(arr).to eq []
      end
    end

    context 'when the array is a single element' do
      it 'returns the array' do
        arr = [1]
        klass.sort_in_place(arr)

        expect(arr).to eq [1]
      end
    end

    context 'when the array is two sorted elements' do
      it 'returns the array' do
        arr = [1,2]
        klass.sort_in_place(arr)

        expect(arr).to eq [1,2]
      end
    end

    context 'when the array is two unsorted elements' do
      it 'returns the sorted array' do
        arr = [2,1]
        klass.sort_in_place(arr)

        expect(arr).to eq [1,2]
      end
    end

    context 'when the array is multiple unsorted elements' do
      it 'returns the sorted array' do
        arr = [2,5,3,4,1]
        klass.sort_in_place(arr)

        expect(arr).to eq [1,2,3,4,5]
      end
    end

    context 'when the array contains duplicate elements' do
      it 'returns the sorted array' do
        arr = [2,2,3,1,1]
        klass.sort_in_place(arr)

        expect(arr).to eq [1,1,2,2,3]
      end
    end

    context 'when the array is nearly sorted' do
      it 'returns the sorted array' do
        arr = [1,0,3,2,5,4,7,6,9,8]
        klass.sort_in_place(arr)

        expect(arr).to eq (0..9).to_a
      end
    end

    context 'when the array contains negative values' do
      it 'returns the sorted array' do
        arr = [2, 0, 1, -2, -1]
        klass.sort_in_place(arr)

        expect(arr).to eq [-2,-1,0,1,2]
      end
    end
  end
end
