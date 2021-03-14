class CreateTrPengajians < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_pengajians do |t|
      t.string :tanggal
      t.string :judul
      t.string :kesimpulan
      t.string :nama
      t.string :status
      t.timestamps
    end
  end
end
