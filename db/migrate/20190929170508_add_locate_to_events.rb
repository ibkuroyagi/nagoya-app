class AddLocateToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :locate, :string
  end
end
