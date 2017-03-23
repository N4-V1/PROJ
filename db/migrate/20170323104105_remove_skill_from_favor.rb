class RemoveSkillFromFavor < ActiveRecord::Migration[5.0]
  def change
    remove_column :favors, :skill, :string
  end
end
