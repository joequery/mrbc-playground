# Benchmark ruby with a bunch of string concats

a = 0
(1..7000000).each do |x|
  a += x
end
puts a
