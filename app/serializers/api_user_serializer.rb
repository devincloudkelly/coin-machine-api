class ApiUserSerializer < ActiveModel::Serializer
  attributes :id, :username, :created_at
end
