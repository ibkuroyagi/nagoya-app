class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.integer :price
      t.text :detail
      t.string :rink
      t.integer :team_id

      t.timestamps
    end
  end
end
