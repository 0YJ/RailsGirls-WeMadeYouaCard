class AddAudioToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :audio, :string
  end
end
