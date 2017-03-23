class AddPasswordToRunners < ActiveRecord::Migration[5.0]
  def change
    add_column :runners, :password, :string
  end
end
