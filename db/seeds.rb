
# Api User seeds
ApiUser.create(api_key: ApiUser.generate_api_key, username: 'Api User 1')
ApiUser.create(api_key: ApiUser.generate_api_key, username: 'Api User 2')
ApiUser.create(api_key: ApiUser.generate_api_key, username: 'Api User 3')

#  Coin seeds
Coin.create(name: 'nickel', value: 0.05, quantity: 0)
Coin.create(name: 'dime', value: 0.10, quantity: 0)
Coin.create(name: 'quarter', value: 0.25, quantity: 0)
Coin.create(name: 'penny', value: 0.01, quantity: 0)
Coin.create(name: 'silver dollar', value: 1.00, quantity: 0)

# Admin seeds
Admin.create(email: 'devin.cloud.kelly@gmail.com', name: 'Devin')
# Admin.create(email: 'elliott@mortgagehippo.com', name: 'Elliott')
