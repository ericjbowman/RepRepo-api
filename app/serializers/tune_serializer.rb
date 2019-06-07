class TuneSerializer < ActiveModel::Serializer
  attributes :id, :title, :composer
  belongs_to :user
end
