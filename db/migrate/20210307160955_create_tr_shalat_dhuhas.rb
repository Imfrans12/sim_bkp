class CreateTrShalatDhuhas < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_shalat_dhuhas do |t|
      t.string :tanggal
      t.string :status
      t.string :nama
      t.string :kode_shalat
      t.timestamps
    end
  end
end
