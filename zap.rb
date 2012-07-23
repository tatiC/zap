# encoding: utf-8

puts "Início require: #{Time.now}"
require '/Users/tatic/Dropbox/my_projects/github/zap/dependencies.rb'
puts "Fim require: #{Time.now}"

def clear_screen
  system("c")
end

clear_screen()
connect_db()

option = 0

while option != "S" do 
  show_menu()
  puts "O que você quer fazer?"
  option = gets().chomp
  process_option(option)
end