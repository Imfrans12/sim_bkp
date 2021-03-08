class CreateTrMotivasis < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_motivasis do |t|
      t.string :tanggal
      t.string :materi
      t.string :pemateri
      t.string :ringkasan
      t.string :nama
      t.timestamps
    end
  end
end
