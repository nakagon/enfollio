class CreateUserLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_links do |t|
      t.references :user,foreign_key: true
      t.integer :type
      t.string  :link_url

      t.timestamps
    end
  end
end
