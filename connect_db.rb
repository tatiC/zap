def connect_db
  dbconfig = YAML::load(File.open('database.yml'))
  ActiveRecord::Base.establish_connection(dbconfig)
  ActiveRecord::Base.logger = Logger.new(STDERR)
end