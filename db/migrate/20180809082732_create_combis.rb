class CreateCombis < ActiveRecord::Migration[5.2]
  def change
    create_table :combis do |t|

      t.timestamps
    end
  end
end
