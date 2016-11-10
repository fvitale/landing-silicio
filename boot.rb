require "cuba/contrib"
require "mote"
require "cuba/safe"
require "pry"
require "sequel"

mode_env_path = File.expand_path("../#{ENV['RACK_ENV']}.env.rb", __FILE__)
require mode_env_path if File.exists?(mode_env_path)
env_path = File.expand_path("../env.rb", __FILE__)
require env_path if File.exists?(env_path)

require "./settings"

Cuba.plugin Cuba::Prelude
Cuba.plugin Cuba::Mote
Cuba.use Rack::Session::Cookie, :secret => "3jf93jdkddii230d93j4jss"
Cuba.use Rack::Static,
  root: "public",
  urls: ["/js", "/css", "/fonts", "/images"]

Cuba.plugin Cuba::Safe

DB = Sequel.connect(Settings.database_url)