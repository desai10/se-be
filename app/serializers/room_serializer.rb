class RoomSerializer < ActiveModel::Serializer
  attributes :id, :title, :editor_text
  has_many :messages
end
