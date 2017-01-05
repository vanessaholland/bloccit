class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :questions, :string, :title
    rename_column :questions, :resulved, :resolved
  end
end
