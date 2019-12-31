class CreatePlots < ActiveRecord::Migration[6.0]
  def change
    create_table :plots do |t|
      t.integer :plot_number
      t.boolean :occupied, default: false
      t.timestamps
    end
  end
end
