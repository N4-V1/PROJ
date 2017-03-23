class AddSkillToRunner < ActiveRecord::Migration[5.0]
  def change
    add_column :runners, :skill, :string
  end
end
