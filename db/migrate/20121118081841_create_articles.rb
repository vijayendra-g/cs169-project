class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :pubmed_id
      t.string :title
      t.timestamps
    end

  end
end
