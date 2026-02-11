class CreateSessions < ActiveRecord::Migration[8.1]
  def change
    create_table :sessions do |t|
      t.string :session_type, default: "timed"
      t.integer :max_input
      t.integer :min_input, default: 0
      t.integer :time_minutes, default: 5
      t.boolean :addition, default: true
      t.boolean :subtraction, default: false
      t.boolean :multiplication, default: false
      t.boolean :division, default: false
      t.timestamps
    end
  end
end
