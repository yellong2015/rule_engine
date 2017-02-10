class Init < ActiveRecord::Migration[5.0]
  def change
    create_table :rules do |t|
      t.string :name
      t.string :object
      t.string :atom
      t.string :operator
      t.string :value
      t.integer :rule_set_id
      t.integer :priority
      t.timestamp
    end

    create_table :rule_sets do |t|
      t.string :name
      t.string :description
      t.string :operator
      t.integer :priority
      t.timestamp
    end

    create_table :rule_set_actions do |t|
      t.string :task_id
      t.string :rule_set_id
      t.timestamp
    end
  end
end
