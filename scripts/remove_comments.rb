#!/usr/bin/env ruby

def read_lines(file_name)
  lines = []
  file = File.new(file_name, "r")
  while (line = file.gets)
    stripped_line = line.strip
    lines << line unless stripped_line == '' || stripped_line[0] == '#'
  end
  file.close
  lines
end

file_name = ARGV[0]
contents = read_lines(file_name).join().strip

`echo '#{contents}' > #{file_name}`
`cat #{file_name}`
