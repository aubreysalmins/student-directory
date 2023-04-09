filename = File.basename(__FILE__)
File.open(filename, "r") do |file|
  while line = file.gets
    puts line
  end
end