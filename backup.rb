def list_links_and_tags
  links_info = []
  
  Link.all.each do |l|
    links_info << "ID: #{l.id} -- LINK: #{l.link}"
    l.tags.each do |t|
      links_info << "TAG: #{t.name}"
    end
  end
  return links_info
end

def make_backup
  f = File.new("backup.txt", "w+")
  f.puts(list_links_and_tags)
end