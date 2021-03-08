class CreateTrEsds < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_esds do |t|
      t.string :tanggal
      t.string :esensi_esd
      t.string :jenis_kegiatan
      t.string :bukti
      t.string :nama
      t.string :status
      t.timestamps
    end
  end
end
