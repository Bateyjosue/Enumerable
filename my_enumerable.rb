module MyEnumerable
  
  def all?
    element = true
    each do |el|
      unless yield el
        element = false
      end
    end
    element
  end

  def any?
    element = false
    each do |el|
      if yield el
        element = true
      end
    end
    element
  end

  
end