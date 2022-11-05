module MyEnumerable
  def all?
    element = true
    each do |el|
      element = false unless yield el
    end
    element
  end

  def any?
    element = false
    each do |el|
      element = true if yield el
    end
    element
  end
  
  def filter
    iter = []
    each do |el|
      if yield el
        iter.push(el)
      end
    end
    puts iter
  end
end
