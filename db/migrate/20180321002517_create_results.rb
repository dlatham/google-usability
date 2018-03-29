class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :title
      t.text :description
      t.string :linkShow
      t.string :link
      t.boolean :ad
      t.references :test, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
