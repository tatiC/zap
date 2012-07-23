# encoding: utf-8

def show_menu
  asteriscos = "*" * 139
  puts asteriscos.green
  puts "MENU:"
  puts ""
  puts "(1) NOVO LINK"
  puts "(2) LISTAR SEUS LINKS"  
  puts "(3) NOVA TAG"
  puts "(4) LISTAR TODAS TAGS"
  puts "(5) APAGAR LINK"
  puts "(6) BACK UP LINKS"
  puts "(7) RESETAR BANCO"
  puts "(S) SAIR"  
  puts asteriscos.green
end

def process_option(option)
  case option
  when "1"
    then 
      puts "Ah! você quer adicionar novo link!"
      get_link_info()
      save_link_information()
  when "2"
    then
      Link.all.each do |l|
        puts l.id
        puts l.link
        puts l.description
      end 
  when "3"
    then
    puts "Ah! você quer adicionar novo tag!"
    get_tag_info()
    save_tag_information()
  when "4"
    then
    Tag.all.each do |t|
      puts t.name
    end
  when "6"
    then
    puts "Começando o backup...aguarde..."  
    make_backup()
    puts "Terminado o backup!"
  when "7"
    then
    puts "Resetando banco..."
    reset_bd()
  when "S"
    then
     puts "Tchau!"  
  end
end