class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.references :user ,  foreign_key: true
      t.references :skill_master,  foreign_key: true
      t.integer :age
      t.integer :level

      t.timestamps
    end
  end
end
