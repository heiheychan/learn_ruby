def measure(t=1)
  time = 0
  
  t.times do
    start_time = Time.now 
    yield
    end_time = Time.now
    time += end_time - start_time
  end
  time / t
end
