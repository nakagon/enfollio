class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :disp_name
      t.date :birth
      t.text :biography
      t.text :image

      t.timestamps
    end
  end
end
