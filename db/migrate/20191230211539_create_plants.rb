class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :img_url
      t.integer :height
      t.string :water
      t.string :sunlight
      t.integer :member_id
      t.integer :plot_id
      t.timestamps
    end
  end
end
