class CreateRunners < ActiveRecord::Migration[5.0]
  def change
    create_table :runners do |t|
      t.string :fname
      t.string :lname
      t.string :contact
      t.string :username
      t.string :password
      t.integer :favor_id
      t.boolean :isAvailable

      t.timestamps
    end
  end
end
