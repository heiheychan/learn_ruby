def translate(w)
  vowel = ["a","e","i","o","u"]
  w = w.split
  w.each do |single_w|
    while not vowel.include?(single_w[0])
      single_w << single_w[0]
      if single_w[0] == "q" && single_w[1] == "u"
        single_w << "u"
        single_w[0] = ""
      end
      single_w[0] = ""
    end
    single_w << "ay"
  end
  w.join(" ")
end