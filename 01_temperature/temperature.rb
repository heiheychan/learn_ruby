def ftoc(f)
  f = f - 32
  return f * 5.0 / 9.0
end

def ctof(c)
  return c * 9.0 / 5.0 + 32.0
end