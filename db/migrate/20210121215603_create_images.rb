class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :imgID
      t.binary :data

      t.timestamps
    end
    add_index :images, :imgID
  end
end
