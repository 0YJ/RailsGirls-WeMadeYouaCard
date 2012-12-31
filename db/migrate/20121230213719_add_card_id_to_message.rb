class AddCardIdToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :card_id, :integer
  end
end
