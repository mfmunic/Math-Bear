class AddCountTotalDefault < ActiveRecord::Migration[8.1]
  def change
    change_column_default :sessions, :card_count_total, 20
  end
end
