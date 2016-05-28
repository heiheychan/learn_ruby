class Temperature

 def initialize options
    @degrees_fahrenheit = options[:f] || options[:c] * (9.0/5.0) + 32
  end

  def in_fahrenheit
    @degrees_fahrenheit
  end

  def in_celsius
    @degrees_celsius = (@degrees_fahrenheit - 32.0) * (5.0/9.0)
  end

  def self.from_celsius degrees_celsius
    new(:c => degrees_celsius)
  end

  def self.from_fahrenheit degrees_fahrenheit
    new(:f => degrees_fahrenheit)
  end

end

class Celsius < Temperature
  def initialize(c)
    @degrees_fahrenheit = c * (9.0/5.0) + 32
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @degrees_fahrenheit = f
  end
end