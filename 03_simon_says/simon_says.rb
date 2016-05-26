def echo(st)
  "#{st}"
end

def shout(st)
  "#{st.upcase}"
end

def repeat(st, times=2)
  op = ""
  times.times {op << st << " "}
  op.chop
end

def start_of_word(st,num)
  st[0...num]
end

def first_word(st)
  st.split.first
end

def titleize(st)
  st = st.capitalize.split
  st.each do |w|
    w.capitalize! unless w == "the" || w == "over" || w == "and"
  end
  st.join(" ")
end