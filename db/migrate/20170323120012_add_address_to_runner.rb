class AddAddressToRunner < ActiveRecord::Migration[5.0]
  def change
    add_column :runners, :address, :string
  end
end
