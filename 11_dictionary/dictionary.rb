class Dictionary
  def initialize
    @e = {}
  end

  def entries
    @e
  end

  def add(h)
    if not h.is_a? String
      h.each do |k,v|
        @e[k] = v
      end
    else
      @e[h] = nil
    end
    
  end

  def keywords
    @e.keys.sort
  end

  def include?(s_term)
    keywords.include? s_term
  end

  def find(s_term)
    result = {}
    s_len = s_term.length
    if @e.empty?
      result
    else
      entries.each do |k,v|
        if k[0...s_len] == s_term
          result[k] = v
        end
      end
    end
    result
  end

  def printable
    result_a = []
    entries.sort.each do |k,v|
      result_a << "[#{k}] \"#{v}\""
    end
    r = result_a.join("\n")
  end

end