class CreateJuans < ActiveRecord::Migration[5.0]
  def change
    create_table :juans do |t|
      t.string :fname
      t.string :lname
      t.string :contact
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
