Sequel.migration do
  change do
    create_table(:holding_types) do
      primary_key :id
      column :code, "text"
      column :name, "text"
      
      index [:code], :unique=>true
    end
    
    create_table(:holdings) do
      primary_key :id
      column :code, "text"
      column :value, "double precision"
      column :currency, "text"
      column :created_at, "timestamp without time zone", :default=>Sequel::CURRENT_TIMESTAMP, :null=>false
      column :updated_at, "timestamp without time zone", :default=>Sequel::CURRENT_TIMESTAMP, :null=>false
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
  end
end
              Sequel.migration do
                change do
                  self << "SET search_path TO \"$user\", public"
                  self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20171210180127_create_holding_types.rb')"
self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20171210183717_create_holdings.rb')"
                end
              end
