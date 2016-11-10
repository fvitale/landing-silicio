Cuba.define do
  on get do
    on root do
      res.redirect "/home"
    end

    on "home" do
      render "home"
    end

    on "thanks" do
      render "thanks"
    end
  end

  on post do
    on "submit" do
      DB[:landed_users].insert({ mail: req.params["mail"], price: req.params["price"], landed_date: Time.now })
      res.redirect "/thanks"
    end
  end
end