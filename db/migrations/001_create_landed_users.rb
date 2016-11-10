Sequel.migration do
  up do
    create_table(:landed_users) do
      primary_key :id
      Date :landed_date
      String :mail, :null=>false
      String :price, :null=>false

      index :mail
      index :price
    end
  end

  down do
    drop_table(:landed_users)
  end
end
