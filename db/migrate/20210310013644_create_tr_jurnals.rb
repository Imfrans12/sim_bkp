class CreateTrJurnals < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_jurnals do |t|
      t.string :tanggal
      t.string :waktu
      t.string :jenis_literasi
      t.string :judul
      t.string :pengarang
      t.string :halaman
      t.string :nama
      t.string :status
      t.timestamps
    end
  end
end
