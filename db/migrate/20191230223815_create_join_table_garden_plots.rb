class CreateJoinTableGardenPlots < ActiveRecord::Migration[6.0]
  def change
    create_join_table :gardens, :plots do |t|
      # t.index [:garden_id, :plot_id]
      # t.index [:plot_id, :garden_id]
    end
  end
end
