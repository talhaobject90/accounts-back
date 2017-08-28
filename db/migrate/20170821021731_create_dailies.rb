class CreateDailies < ActiveRecord::Migration[5.2]
  def change
    create_table :dailies do |t|
      t.date :date
      t.decimal :cashinhand ,  :precision => 20, :scale => 2
      t.decimal :profit ,  :precision => 20, :scale => 2

      t.timestamps
    end
  end
end
