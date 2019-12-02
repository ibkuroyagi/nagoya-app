class AddAdminFlgToTeam < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :admin_flg, :boolean
  end
end
