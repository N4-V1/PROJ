class AddAddressToJuan < ActiveRecord::Migration[5.0]
  def change
    add_column :juans, :address, :string
  end
end
