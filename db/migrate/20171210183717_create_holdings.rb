Sequel.migration do
  change do

    create_table :holdings do
      primary_key :id
      String :code
      Float :value
      String :currency
      column :created_at, DateTime, null: false, default: Sequel::CURRENT_TIMESTAMP
      column :updated_at, DateTime, null: false, default: Sequel::CURRENT_TIMESTAMP
    end

  end
end
