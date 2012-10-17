class CreateOptionValues < ActiveRecord::Migration
  def up
    create_table :option_values, :force => true do |t|
      t.integer :option_id
      t.string :name
      t.integer :position
      t.timestamps
    end
  end

  def down
    drop_table :options_values
  end
end