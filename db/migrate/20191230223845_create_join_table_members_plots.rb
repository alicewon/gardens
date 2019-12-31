class CreateJoinTableMembersPlots < ActiveRecord::Migration[6.0]
  def change
    create_join_table :members, :plots do |t|
      # t.index [:member_id, :plot_id]
      # t.index [:plot_id, :member_id]
    end
  end
end
