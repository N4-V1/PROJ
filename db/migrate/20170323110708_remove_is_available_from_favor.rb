class RemoveIsAvailableFromFavor < ActiveRecord::Migration[5.0]
  def change
    remove_column :favors, :isAvailable, :boolean
  end
end
