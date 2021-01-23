class RemoveDataFromImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :images, :data, :binary
  end
end
