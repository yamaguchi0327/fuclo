class AddColumnToCloth < ActiveRecord::Migration[5.2]
  def change
    add_column :cloths, :fav, :boolean, default:false
  end
end
