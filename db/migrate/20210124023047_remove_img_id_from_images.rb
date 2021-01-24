class RemoveImgIdFromImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :images, :imgID, :string
  end
end
