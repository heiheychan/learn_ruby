class XmlDocument
  def hello(options={})
    @h = "<hello"
    if not options.empty?
      options.each do |k,v|
        @h << " #{k}='#{v}'"
      end
    end
    if not block_given?
      @h << "/>"
    else
      @h << ">#{yield}</hello>"
    end
    @h
  end
  def goodbye(options={})
    @g = "<goodbye"
    if not options.empty?
      options.each do |k,v|
        @g << " #{k}='#{v}'"
      end
    end
    if not block_given?
      @g << "/>"
    else
      @g << ">#{yield}</goodbye>"
    end
    @g
  end
  def ok_fine(options={})
    @o = "<ok_fine"
    if not options.empty?
      options.each do |k,v|
        @o << " #{k}='#{v}'"
      end
    end
    if not block_given?
      @o << "/>"
    else
      @o << ">#{yield}</ok_fine>"
    end
    @o
  end
  def come_back(options={})
    @c = "<come_back"
    if not options.empty?
      options.each do |k,v|
        @c << " #{k}='#{v}'"
      end
    end
    if not block_given?
      @c << "/>"
    else
      @c << ">#{yield}</come_back>"
    end
    @c
  end
  def send(tag_name)
    @xml = ""
    @xml << "<#{tag_name}/>"
  end
end


xml = XmlDocument.new
puts xml.hello
puts xml.hello(:name => 'dolly')