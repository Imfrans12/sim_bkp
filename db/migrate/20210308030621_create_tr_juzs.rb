class CreateTrJuzs < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_juzs do |t|
      t.string :tanggal
      t.string :ayat
      t.string :nama
      t.string :status
      t.timestamps
    end
  end
end
