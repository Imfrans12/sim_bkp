class AddAgamaToMsUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :ms_users, :agama, :string
  end
end
