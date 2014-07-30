#!/usr/bin/env ruby

def get_branch_from_user
  print "Enter the name of the branch to delete, or press Enter to quit: "
  branch = gets.chomp
  puts
  branch
end

def delete(branch)
  `git branch -D #{branch}`
  print "branch, #{branch}, deleted\n"
end

def list_branches
  print "\nGit branches:\n"
  puts `git branch`
  puts
end

########################################
# Start
########################################

while(true) do
  list_branches
  branch = get_branch_from_user
  
  break if branch == ''

  delete branch
end 
