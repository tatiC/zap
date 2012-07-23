def connect_db
  conn = YAML::load(File.open('database.yml'))
  ActiveRecord::Base.establish_connection(conn)
  ActiveRecord::Base.logger = Logger.new(STDERR)
end