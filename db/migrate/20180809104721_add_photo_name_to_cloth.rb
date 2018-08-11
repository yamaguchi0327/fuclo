class AddPhotoNameToCloth < ActiveRecord::Migration[5.2]
  def change
    add_column :cloths, :photo_name, :string
  end
end
