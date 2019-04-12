require 'sinatra'
require 'pg'

set :bind, '0.0.0.0'

con = PG.connect \
  dbname: ENV.fetch('POSTGRES_DATABASE'),
	user: ENV.fetch('POSTGRES_USER'),
	password: ENV.fetch('POSTGRES_PASSWORD'),
	host: ENV.fetch('POSTGRES_HOST'),
	port: ENV.fetch('POSTGRES_PORT')

get '/' do
  rs_1 = con.exec 'SELECT VERSION()'
  rs_2 = con.exec 'SELECT NOW()'
  "Hello from #{ENV.fetch('HOSTNAME')} | #{con.server_version} | #{rs_1.getvalue(0, 0)} | #{rs_2.getvalue(0, 0)}".strip
end
