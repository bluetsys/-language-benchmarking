sum = 0
st = Time.now
for index in 0...100000001
    sum = sum + index 
end

ed = Time.now - st

puts "=========================="
puts "ruby"
puts sum
puts ed