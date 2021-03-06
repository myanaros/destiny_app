class CreateItems < ActiveRecord::Migration
  def up
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :token
      t.belongs_to :chest, index: true, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :items
  end
end
