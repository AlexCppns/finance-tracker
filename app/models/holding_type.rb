class HoldingType < Sequel::Model
  one_to_many :holdings, primary_key: :code, key: :code
end
