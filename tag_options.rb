def get_tag_info()
  puts "Nome tag: "
  @tag = gets().chomp
end

def save_tag_information()
  Tag.create(:name => @tag)  
end