class CreateMsKodes < ActiveRecord::Migration[5.2]
  def change
    create_table :ms_kodes do |t|
      t.string :kode
      t.string :keterangan
      t.integer :skor
      t.timestamps
    end
  end
end
