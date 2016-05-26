def add(n1,n2)
  n1 + n2
end

def subtract(n1,n2)
  n1 - n2
end

def sum(a)
  a.inject(0){|n, sum| sum += n}
end

def multiply(*args)
  args.inject(1){|n, sum| sum *= n}
end

def power(b,p)
  sum = 1
  p.times { sum *= b} 
  sum
end

def factorial(num)
  sum = 1
  num.downto(1) do |n|
    sum *= n
  end
  sum
end