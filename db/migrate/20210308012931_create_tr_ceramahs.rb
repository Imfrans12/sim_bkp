class CreateTrCeramahs < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_ceramahs do |t|
      t.string :tanggal
      t.string :tempat
      t.string :judul
      t.string :pemateri
      t.string :kesimpulan
      t.string :nama
      t.string :status
      t.timestamps
    end
  end
end
