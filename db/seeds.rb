Provider.destroy_all
Client.destroy_all
Bidding.destroy_all
Dispatch.destroy_all

providers = Provider.create(
  [{cbu: '00000000', account: 'RO1', name: 'Rouge', address: 'Av Freyre 2412',
    phone: '123123', city: 'Santa Fe', postal_code: 3000},
   {cbu: '11111111', account: 'FE2', name: 'Fenix',
    address: 'Bv Pellegrini 1658', phone: '123123', city: 'Santa Fe',
    postal_code: 3000}])

clients = Client.create(
  [{cbu: '00000000', account: 'CU1', name: 'Cullen', address: 'Av Freyre 2412',
    phone: '123123', city: 'Santa Fe', postal_code: 3000},
   {cbu: '11111111', account: 'IT1', name: 'Iturraste',
    address: 'Bv Pellegrini 1658', phone: '123123', city: 'Santa Fe',
    postal_code: 3000}])

biddings = Bidding.create(
  [{code: 'AAA123', provision_order: 'CAC1', client: clients.first},
   {code: 'BBB123', provision_order: 'CAC2', client: clients.last},
   {code: 'CCC123', provision_order: 'CAC3', client: clients.first},
   {code: 'DDD123', provision_order: 'CAC4', client: clients.last},
   {code: 'EEE123', provision_order: 'CAC5', client: clients.first}])

dispatches = Dispatch.create(
  [{expire_date: (Time.now + 15.days), bidding: biddings.first},
   {expire_date: (Time.now + 25.days), bidding: biddings.first},
   {expire_date: (Time.now + 35.days), bidding: biddings.first},
   {expire_date: (Time.now + 45.days), bidding: biddings.first},
   {expire_date: (Time.now + 55.days), bidding: biddings.first},
   {expire_date: (Time.now + 65.days), bidding: biddings.first},
   {expire_date: (Time.now + 15.days), bidding: biddings[1]},
   {expire_date: (Time.now + 25.days), bidding: biddings[1]},
   {expire_date: (Time.now + 35.days), bidding: biddings[1]},
   {expire_date: (Time.now + 15.days), bidding: biddings[2]},
   {expire_date: (Time.now + 25.days), bidding: biddings[2]},
   {expire_date: (Time.now + 35.days), bidding: biddings[2]},
   {expire_date: (Time.now + 15.days), bidding: biddings[3]},
   {expire_date: (Time.now + 25.days), bidding: biddings[3]},
   {expire_date: (Time.now + 35.days), bidding: biddings[3]},
   {expire_date: (Time.now + 45.days), bidding: biddings[3]},
   {expire_date: (Time.now + 55.days), bidding: biddings[3]},
   {expire_date: (Time.now + 65.days), bidding: biddings[3]},
   {expire_date: (Time.now + 15.days), bidding: biddings.last},
   {expire_date: (Time.now + 25.days), bidding: biddings.last},
   {expire_date: (Time.now + 35.days), bidding: biddings.last},
   {expire_date: (Time.now + 45.days), bidding: biddings.last},
   {expire_date: (Time.now + 55.days), bidding: biddings.last}])

Item.create(
  [{name: 'Papel A4', description: 'Hoja lisa 80hojas', price: 123, cost: 50, provider: providers.first, dispatch: dispatches.first},
   {name: 'Bolsa', description: '60 bolsas 700x250', price: 150, cost: 25, provider: providers.first, dispatch: dispatches.first},
   {name: 'Lavandina', description: 'Ayudin 3lt', price: 80, cost: 45, provider: providers.first, dispatch: dispatches.first},
   {name: 'Detergente', description: 'Magistral 1lt', price: 70, cost: 15, provider: providers.last, dispatch: dispatches.last},
   {name: 'Birome', description: 'Bic negra', price: 178, cost: 76, provider: providers.last, dispatch: dispatches.last}])
