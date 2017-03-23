class AddSkillIdToFavours < ActiveRecord::Migration[5.0]
  def change
    add_column :favours, :skill_id, :integer
  end
end
