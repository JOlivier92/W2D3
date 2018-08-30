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
  
  #[ 2, 3, 5, 9, 2]
  def stock_picker
    best_delta = 0
    days = []
    (self.length - 1).times do |i|
      ((i + 1)..self.length - 1).each do |j|
        raise "Not stock prices" unless self[j].instance_of?(Fixnum)
        delta = self[j] - self[i] 
        if delta > best_delta
          best_delta = delta 
          days = [i, j]
        end
      end
    end
    p days
  end
  
  
end

