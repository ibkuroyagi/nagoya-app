class CreateTeamUniversities < ActiveRecord::Migration[6.0]
  def change
    create_table :team_universities do |t|
      t.references :team, null: false, foreign_key: true
      t.references :university, null: false, foreign_key: true

      t.timestamps
    end
  end
end
