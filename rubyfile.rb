# Some random operations to see how fast mruby is

a = 0
(1..7000000).each do |x|
  a += x
end
puts a
