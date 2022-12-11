class FixCusineColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :cuisines, :type, :name
  end
end
