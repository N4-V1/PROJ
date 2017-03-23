class AddUsernameToRunners < ActiveRecord::Migration[5.0]
  def change
    add_column :runners, :username, :string
  end
end
