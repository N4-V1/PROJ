class AddSkillIdToFavor < ActiveRecord::Migration[5.0]
  def change
    add_column :favors, :skill_id, :integer
  end
end
