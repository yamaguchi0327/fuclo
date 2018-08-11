class CreateClothCombis < ActiveRecord::Migration[5.2]
  def change
    create_table :cloth_combis do |t|
      t.references :cloth, foreign_key: true
      t.references :combi, foreign_key: true

      t.timestamps
    end
  end
end
