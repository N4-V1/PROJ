class AddSkillToFavor < ActiveRecord::Migration[5.0]
  def change
    add_column :favors, :skill, :string
  end
end
