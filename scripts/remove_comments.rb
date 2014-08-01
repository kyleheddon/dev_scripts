#!/usr/bin/env ruby

def read_file(file_name)
  i = 1
  lines = []
  file = File.new(file_name, "r")
  while (line = file.gets)
    stripped_line = line.strip
    lines << line unless stripped_line == '' || stripped_line[0] == '#'
    # if i == 9
    #   puts stripped_line.chomp[0] == ' '
    #   puts stripped_line 
    # end

    i += 1
  end
  file.close
  lines
end

file_name = ARGV[0]

contents = read_file(file_name).join()
puts 'contents: '
puts contents
`echo '#{contents}' > #{file_name}`

puts 'done'
