require "rspec_practice"

RSpec.describe Array do
  describe "#our_uniq" do
    arr = [1, 2, 1, 3, 3]
    # returns array of same-ordered duplicates
    # does not modify original array
    # returns 
    it "Return array of unique elements" do
      expect(arr.our_uniq.length).to eq(3)
    end
    
    it "Return elements in correct order" do
      expect(arr.our_uniq).to eq([1, 2, 3])
    end
      
    it "Does not modify the original array" do
      expect(arr.our_uniq.object_id).to_not eq(arr.object_id)
    end
      
  end
  
  describe "#our_two_sum" do
    key = [-1, 0, 2, -2, 1, 0]
    it 'return array of array that has index that sum to 0' do
      expect(key.our_two_sum).to eq([[0,4],[1,5],[2,3]])
    end
    
    it 'return array of arrays in right order' do      
      expect(key.our_two_sum).to eq(key.our_two_sum.sort)
    end
  end  
  
  
  describe "#our_transpose" do
    rows = [[0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]]
    row1 = rows[0]
    row2 = rows[1]
    row3 = rows[2]
    it "returns transposed array" do
      expect(rows.our_transpose).to eql([[0,3,6],[1,4,7],[2,5,8]])
    end
  end
end