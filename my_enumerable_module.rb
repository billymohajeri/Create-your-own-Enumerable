module MyEnumerable
  def all?
    output = true
    each { |el| output = false unless yield el }
    output
  end

  def any?
    output = false
    each { |el| output = true if yield el }
    output
  end

  def filter
    arr = []
    each { |el| arr.push(el) if yield el }
    arr
  end
end
