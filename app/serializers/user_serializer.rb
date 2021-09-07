class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :client_id
end