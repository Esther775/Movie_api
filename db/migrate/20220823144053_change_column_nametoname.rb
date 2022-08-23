class ChangeColumnNametoname < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :Name, :name
    rename_column :movies, :Year, :year
  end
end
