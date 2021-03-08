class CreateTrSikaps < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_sikaps do |t|
      t.string :tanggal
      t.string :jenis_kode
      t.string :kode
      t.string :saksi
      t.string :status
      t.timestamps
    end
  end
end
