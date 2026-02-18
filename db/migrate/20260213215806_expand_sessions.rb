class ExpandSessions < ActiveRecord::Migration[8.1]
  def change
    add_column :sessions, :card_count_total, :integer
    add_column :sessions, :card_count_addition, :integer
    add_column :sessions, :card_count_subtraction, :integer
    add_column :sessions, :card_count_multiplication, :integer
    add_column :sessions, :card_count_division, :integer
    change_column_default :sessions, :session_type, from: "timed", to: "count"
    change_column_default :sessions, :max_input, 20
  end
end
