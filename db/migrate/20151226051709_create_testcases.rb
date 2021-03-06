class CreateTestcases < ActiveRecord::Migration
  def change
    create_table :testcases do |t|
      t.integer :heading_level
      t.text :body
      t.string :result
      t.text :note
      t.integer :test_id

      t.timestamps null: false
    end
    add_index :testcases, [:result, :test_id]
  end
end
