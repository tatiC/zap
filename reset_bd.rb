def reset_bd
  system('rm database.log;rm db/zap.sqlite3;rake')
end