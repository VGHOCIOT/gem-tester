class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.integer :step_number
      t.text :description
      t.boolean :completed

      t.timestamps
    end
  end
end
