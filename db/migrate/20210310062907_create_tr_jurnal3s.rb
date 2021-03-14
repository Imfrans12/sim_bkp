class CreateTrJurnal3s < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_jurnal3s do |t|
      t.string :tanggal
      t.string :jumlah_text
      t.string :nilai
      t.string :nama
      t.string :status
      t.timestamps
    end
  end
end
