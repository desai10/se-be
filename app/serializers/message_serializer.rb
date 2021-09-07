class MessageSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :user_id, :content, :created_at

  belongs_to :user_id
end
