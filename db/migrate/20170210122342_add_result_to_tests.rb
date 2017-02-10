class AddResultToTests < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :result, :text
  end
end
