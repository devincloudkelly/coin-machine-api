
# Api User seeds
ApiUser.create(api_key: ApiUser.generate_api_key, username: 'Api User 1')
ApiUser.create(api_key: ApiUser.generate_api_key, username: 'Api User 2')
ApiUser.create(api_key: ApiUser.generate_api_key, username: 'Api User 3')

# Admin seeds
Admin.create(email: 'devin.cloud.kelly@gmail.com', name: 'Devin')
Admin.create(email: 'elliott@mortgagehippo.com', name: 'Elliott')