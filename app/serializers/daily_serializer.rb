class DailySerializer < ActiveModel::Serializer
  attributes :id , :date , :cashinhand , :profit
  has_many :partnersdailies
end
