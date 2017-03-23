class AddPayToFavor < ActiveRecord::Migration[5.0]
  def change
    add_column :favors, :pay, :integer
  end
end
