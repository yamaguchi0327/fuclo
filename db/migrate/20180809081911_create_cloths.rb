class CreateCloths < ActiveRecord::Migration[5.2]
  def change
    create_table :cloths do |t|
    	t.binary :photo,null:false
    	t.integer :category,null:false
    	t.integer :color,null:false

      t.timestamps
    end
  end
end
