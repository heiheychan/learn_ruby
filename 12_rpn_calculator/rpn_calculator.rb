class RPNCalculator
  def initialize
    @value = 0
    @value_list = []
  end
  def value
    @value
  end
  def push(n)
    @value_list << n + 0.0
  end
  def plus
    empty?
    if @value_list[-2].nil?
      @value += @value_list[-1]
    else
      @value += @value_list[-1] + @value_list[-2]
      @value_list.delete_at(-1)
    end
    @value_list.delete_at(-1)
  end
  def minus
    empty?
    if @value_list[-2].nil?
      @value -= @value_list[-1]
    else
      @value += @value_list[-2] - @value_list[-1]
      @value_list.delete_at(-1)
    end
    @value_list.delete_at(-1)
  end
  def divide
    empty?
    if @value == 0
      if @value_list[-2].nil?
        @value /= @value_list[-1]
      else
        @value = @value_list[-2] / @value_list[-1]
        @value_list.delete_at(-1)
      end
    else
      puts @value
      puts @value_list[-1]
      @value /= @value_list[-1]
    end
    @value_list.delete_at(-1)
  end
  def times
    empty?
    if @value == 0
      if @value_list[-2].nil?
        @value *= @value_list[-1]
      else
        @value = @value_list[-2] * @value_list[-1]
        @value_list.delete_at(-1)
      end
    else
      @value *= @value_list[-1]
    end
    @value_list.delete_at(-1)
  end
  def empty?
    if @value_list.empty? && @value == 0
      raise "calculator is empty"
    end
  end
  def tokens(st)
    operator_list = %w(- + / *)
    st_a = st.split
    st_a.map! do |a|
      if operator_list.include? a
        a.to_sym
      else
        a.to_i
      end
    end
  end
  def evaluate(st)
    t = tokens(st)
    t.each do |single_t|
      if single_t.is_a? Integer
        push(single_t)
      elsif single_t == :/
        puts "Been here"
        divide
      elsif single_t == :*
        times
      elsif single_t == :+
        plus
      elsif single_t == :-
        minus
      end
    end
    @value
  end
end

calculator = RPNCalculator.new
puts calculator.evaluate("1 2 3 * + 4 5 - /")
  