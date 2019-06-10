class TuneSerializer < ActiveModel::Serializer
  attributes :id, :title, :composer, :user_id
  belongs_to :user
end
