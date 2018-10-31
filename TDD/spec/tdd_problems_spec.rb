require 'rspec'
require 'tdd_problems'

  describe '#my_uniq' do
    subject(:test_arr) do
      [1, 1, 2, 2, 3]
    end
    
    it "returns a new array with all unique elements" do
      expect(test_arr.my_uniq).to eq([1, 2, 3])
    end
  end
  
  describe '#two_sum' do
    it "returns the indices pairs of all elements that sum to 0" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end
  
  describe '#my_uniq' do
    it "converts the 2D array from a row format to a column format" do
      expect(my_transpose([[0, 1, 2], [3, 4, 5], [6, 7, 8]])).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
end

  describe '#stock_picker' do
    subject(:stock_arr) do
      [400, 125, 700, 100, 400, 300]
    end
    it 'returns an array' do
      expect(stock_picker(stock_arr)).to be_an_instance_of(Array)
      expect(stock_picker(stock_arr).length).to equal(2)
    end
    
    it "returns the lowest value at index 1 and highest value at index 2" do
      expect(stock_picker(stock_arr)).to eq([125, 700])
    end
  end