class AddResultToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :result, :text
  end
end
