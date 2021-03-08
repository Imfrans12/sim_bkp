class AddNamaToTrSikap < ActiveRecord::Migration[5.2]
  def change
    add_column :tr_sikaps, :nama, :string
  end
end
