class AddHasTaskToRunner < ActiveRecord::Migration[5.0]
  def change
    add_column :runners, :hasTask, :boolean
  end
end
