class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    remainder = @seconds%3600
    minutes = remainder/60
    second = remainder%60
    hours = hours.to_s
    minutes = minutes.to_s
    second = second.to_s
    if hours.length == 1
      hours = "0" + hours
    end
    if minutes.to_s.length == 1
      minutes = "0" + minutes
    end
    if second.to_s.length == 1
      second = "0" + second
    end

    "#{hours}:#{minutes}:#{second}"
  end
  
end
