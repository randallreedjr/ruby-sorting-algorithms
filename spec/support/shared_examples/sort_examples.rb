RSpec.shared_examples 'sort' do |klass|
  describe 'sort' do
    context 'when the array is empty' do
      it 'returns the array' do
        result = klass.sort([])

        expect(result).to eq []
      end
    end

    context 'when the array is a single element' do
      it 'returns the array' do
        result = klass.sort([1])

        expect(result).to eq [1]
      end
    end

    context 'when the array is two sorted elements' do
      it 'returns the array' do
        result = klass.sort([1,2])

        expect(result).to eq [1,2]
      end
    end

    context 'when the array is two unsorted elements' do
      it 'returns the sorted array' do
        arr = [2,1]
        result = klass.sort(arr)

        expect(result).to eq [1,2]
        expect(arr).to eq [2,1]
      end
    end

    context 'when the array is multiple unsorted elements' do
      it 'returns the sorted array' do
        arr = [2,5,3,4,1]
        result = klass.sort(arr)

        expect(result).to eq [1,2,3,4,5]
        expect(arr).to eq [2,5,3,4,1]
      end
    end

    context 'when the array contains duplicate elements' do
      it 'returns the sorted array' do
        arr = [2,2,3,1,1]
        result = klass.sort(arr)

        expect(result).to eq [1,1,2,2,3]
        expect(arr).to eq [2,2,3,1,1]
      end
    end

    context 'when the array is nearly sorted' do
      it 'returns the sorted array' do
        arr = [1,0,3,2,5,4,7,6,9,8]
        result = klass.sort(arr)

        expect(result).to eq (0..9).to_a
        expect(arr).to eq [1,0,3,2,5,4,7,6,9,8]
      end
    end

    context 'when the array contains negative values' do
      it 'returns the sorted array' do
        arr = [2, 0, 1, -2, -1]
        result = klass.sort(arr)

        expect(result).to eq [-2,-1,0,1,2]
        expect(arr).to eq [2, 0, 1, -2, -1]
      end
    end
  end
end
