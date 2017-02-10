class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.text :input

      t.timestamps
    end
  end
end
