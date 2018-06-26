# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

HoldingType.dataset.delete

HoldingType.create(code: 'retirement', name: 'Retirement funds')
HoldingType.create(code: 'stock_market', name: 'Stock market')
HoldingType.create(code: 'crypto_market', name: 'Crypto market')


Holding.dataset.delete

Holding.create(code: 'crypto_market', value: 1.2, currency: "USD", created_at: (3.months).ago)
Holding.create(code: 'crypto_market', value: 3.2, currency: "USD", created_at: (2.months).ago)
Holding.create(code: 'crypto_market', value: 3.5, currency: "USD", created_at: (2.months + 1.week).ago)
Holding.create(code: 'crypto_market', value: 3.8, currency: "USD", created_at: (1.months).ago)

Holding.create(code: 'retirement', value: 2.2, currency: "USD", created_at: (3.months).ago)
Holding.create(code: 'retirement', value: 2.8, currency: "USD", created_at: (2.months).ago)
Holding.create(code: 'retirement', value: 2.9, currency: "USD", created_at: (1.months).ago)

Holding.create(code: 'stock_market', value: 6.2, currency: "USD", created_at: (3.months).ago)
Holding.create(code: 'stock_market', value: 7.8, currency: "USD", created_at: (2.months).ago)
Holding.create(code: 'stock_market', value: 9.4, currency: "USD", created_at: (1.months).ago)