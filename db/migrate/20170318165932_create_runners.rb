class CreateRunners < ActiveRecord::Migration[5.0]
  def change
    create_table :runners do |t|
      t.string :fname
      t.string :lname
      t.integer :skill
      t.time :time_availfrom
      t.time :time_availto
      t.string :description

      t.timestamps
    end
  end
end
