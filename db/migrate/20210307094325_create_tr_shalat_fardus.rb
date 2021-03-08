class CreateTrShalatFardus < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_shalat_fardus do |t|
      t.string :tanggal
      t.string :status
      t.string :nama
      t.timestamps
    end
  end
end
