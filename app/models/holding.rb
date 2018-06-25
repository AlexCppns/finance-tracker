class Holding < Sequel::Model
  many_to_one :holding_type, key: :code, primary_key: :code
end
