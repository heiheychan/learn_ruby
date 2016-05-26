def reverser
  y = yield.split
  y.each do |n|
    n.reverse!
  end
  y.join(" ")
end

def adder(v=1)
  v + yield
end

def repeater(n=1)
  n.times { yield }
end