def get_link_info()
  puts "Nome link: "
  @name = gets().chomp
  puts "Description: "
  @description = gets().chomp
  puts "Tag:"
  @tag = gets().chomp
end

def save_link_information()
  l = Link.create(:link => @name, :description => @description) 
  if (Tag.where(:name => @tag)).empty?
    Tag.create(:name => @tag) 
  end
  l.taggings.create(:tag_id => (Tag.where(:name => @tag).first.id))
end