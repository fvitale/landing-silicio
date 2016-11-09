require "cuba"
require "cuba/contrib"
require "mote"
require "cuba/safe"

Cuba.plugin Cuba::Prelude
Cuba.plugin Cuba::Mote
Cuba.use Rack::Session::Cookie, :secret => "3jf93jdkddii230d93j4jss"
Cuba.use Rack::Static,
  root: "public",
  urls: ["/js", "/css", "/fonts", "/images"]

Cuba.plugin Cuba::Safe

Cuba.define do
  on get do
    on root do
      res.redirect "/home"
    end

    on "home" do
      render "home"
    end
  end
end