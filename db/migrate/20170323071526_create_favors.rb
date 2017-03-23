class CreateFavors < ActiveRecord::Migration[5.0]
  def change
    create_table :favors do |t|
      t.string :desc
      t.boolean :isAvailable
      t.integer :juan_id
      t.integer :runner_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
