class AddColumnSortToResults < ActiveRecord::Migration[5.1]
  def change
    add_column :results, :sort, :integer
  end
end
