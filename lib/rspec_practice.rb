class Array
  
  def our_uniq
    output = []
    self.each do |el|
      output << el unless output.include?(el)
    end
    output
  end
  
  def our_two_sum
    i = 0
    output = []
    while i < self.length-1
      j = i+1
      while j < self.length
        output << [i,j] if self[i] + self[j] == 0
        j+=1
      end
      i+=1
    end
    output
  end
  
  def our_transpose
    self.transpose
  end
end