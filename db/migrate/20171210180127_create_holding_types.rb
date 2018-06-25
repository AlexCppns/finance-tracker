Sequel.migration do
  change do

    create_table :holding_types do
      primary_key :id
      String :code
      String :name
      index [:code], unique: true
    end

  end
end
