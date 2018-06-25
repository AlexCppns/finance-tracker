Sequel::Model.plugin :timestamps

module TimestampsMonkeyPatch
  def timestamps
    column :created_at, 'timestamp with time zone'
    column :updated_at, 'timestamp with time zone'
  end
end

Sequel::Schema::CreateTableGenerator.prepend(TimestampsMonkeyPatch)