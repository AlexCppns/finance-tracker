class Holding < Sequel::Model
  many_to_one :holding_type, key: :code, primary_key: :code

  def self.monthly_dataset
    select(:value, :created_at, :code).filter(id: monthly_ids_dataset).order(Sequel.asc(:created_at))
  end

  def self.monthly_ids_dataset
    select(Sequel.lit("max(id) as id"))
        .group(Sequel.lit("date_trunc('month', created_at)"), :code)
  end
end
