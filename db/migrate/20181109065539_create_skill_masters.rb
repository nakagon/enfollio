class CreateSkillMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_masters do |t|
      t.string :name

      t.timestamps
    end
  end
end
