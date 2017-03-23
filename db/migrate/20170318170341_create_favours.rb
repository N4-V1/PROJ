class CreateFavours < ActiveRecord::Migration[5.0]
  def change
    create_table :favours do |t|
      t.integer :juan_id
      t.integer :runner_id
      t.string :description
      t.decimal :price
      t.boolean :is_available
      t.time :time_availfrom
      t.time :time_availto

      t.timestamps
    end
  end
end
