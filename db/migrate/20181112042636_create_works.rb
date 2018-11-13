class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :url
      t.string :source_url
      t.string :image
      
      t.timestamps
    end
  end
end
