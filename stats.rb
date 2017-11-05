


#test code
a = [ 70, 65, 80, 85, 23]
b = [ 70, 65, 80, 85, 23, 45]


#array of random numbers
array_of_randoms = (Array.new(1000000){rand(0..1000)})

#calculating the mean
def mean(n)
  sum = 0.0
  n.each do |i|
    sum += i
  end
  sum / n.size
end

#calculating the median
def median(array)
  #calculating array length
  array_length = array.length

  #sorting the array
  sorted_array = array.sort

  #median formula
  array_length % 2==1 ? sorted_array[array_length/2] : (sorted_array[array_length/2 - 1] + sorted_array[array_length/2]).to_f / 2
end

#calculating the variance
def variance(number)
  sum = 0.0
  n = mean(number)
  number.each do |j|
    sum += ((j - n) * (j - n)) / number.size
  end
  sum
end

#calcualting the standard_deviation
def standard_deviation(n)
  variance(n)**(1.0/2)
end

# #outputting the info
puts "The mean : #{mean(array_of_randoms)}"
puts "The median : #{median(array_of_randoms)}"
puts "The standard deviation : #{standard_deviation(array_of_randoms)}"


#Test Data
puts "mean a: #{mean(a)} & mean b: #{mean(b)}"
puts "median a: #{median(a)} & median b: #{median(b)}"
puts "variance a: #{variance(a)} & variance b: #{variance(b)}"
puts "standard deviation a: #{standard_deviation(a)} & " \
     "standard deviation b: #{standard_deviation(b)}"
