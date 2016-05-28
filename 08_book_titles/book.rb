class Book
  attr_reader :title
  def title=(b)
    except = ["the","a","an","and","in","of"]
    b_array = b.split
    b_array.each_with_index do |one_b, i|
      unless except.include? one_b and i != 0
        one_b.capitalize!
      end
    end
    @title = b_array.join(" ")
  end
end