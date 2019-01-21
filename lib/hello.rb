def hello_t(array)
  if block_given?
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
  array
else
  puts "Hey! No block was given!"
end
end

hello_t(["tim","tom","jim"]) do |name|
  if name.start_with?("t")
    puts "Hi, #{name}"
  end
end
