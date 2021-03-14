class AddStatusToTrMotivasis < ActiveRecord::Migration[5.2]
  def change
    add_column :tr_motivasis, :status, :string
  end
end
