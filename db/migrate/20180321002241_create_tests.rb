class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.text :description
      t.boolean :live

      t.timestamps null: false
    end
  end
end
