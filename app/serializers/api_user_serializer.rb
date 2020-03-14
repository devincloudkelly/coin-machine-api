class ApiUserSerializer < ActiveModel::Serializer
  attributes :id, :api_key, :username, :created_at
end
