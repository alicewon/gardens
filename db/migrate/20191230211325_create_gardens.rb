class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :address
      t.text :description
      t.text :img_url
      t.text :site_url
      t.timestamps
    end
  end
end
