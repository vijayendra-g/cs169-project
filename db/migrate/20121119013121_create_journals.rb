class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :iso
      t.text :title
      t.float :impact

      t.timestamps
    end
  end
end
