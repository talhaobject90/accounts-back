class PartnersdailySerializer < ActiveModel::Serializer
  attributes :id , :date , :investment ,:holdingspercentage , :profitbeforesharing ,:profitaftersharing , :holdingspercentage ,:withdrawals

  belongs_to :user
  belongs_to :daily
end
