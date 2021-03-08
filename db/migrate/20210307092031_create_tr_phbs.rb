class CreateTrPhbs < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_phbs do |t|
      t.string :tanggal_olahraga
      t.string :aktifitas
      t.string :durasi
      t.string :tanggal_makan
      t.string :nama
      t.string :status
      t.string :karbohidrat
      t.string :protein
      t.string :sayur
      t.string :buah
      t.string :status
      t.timestamps
    end
  end
end
