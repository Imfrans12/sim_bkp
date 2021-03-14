class CreateTrJurnal2s < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_jurnal2s do |t|
      t.string :tanggal
      t.string :judul
      t.string :pengarang
      t.string :resume
      t.string :nama
      t.string :status
      t.timestamps
    end
  end
end
