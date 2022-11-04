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
end
