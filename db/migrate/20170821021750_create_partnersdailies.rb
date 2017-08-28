class CreatePartnersdailies < ActiveRecord::Migration[5.2]
  def change
    create_table :partnersdailies do |t|
      t.date :date
      t.references :user, index: true, foreign_key: true
      t.references :daily, index: true, foreign_key: true
      t.decimal :investment ,  :precision => 20, :scale => 2
      t.decimal :holdingspercentage ,  :precision => 20, :scale => 2
      t.decimal :profitbeforesharing ,  :precision => 20, :scale => 2
      t.decimal :profitaftersharing ,  :precision => 20, :scale => 2
      t.decimal :withdrawals ,  :precision => 20, :scale => 2 , default:0


      t.timestamps
    end
  end
end
