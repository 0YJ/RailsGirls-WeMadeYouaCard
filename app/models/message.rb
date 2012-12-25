class Message < ActiveRecord::Base
  attr_accessible :audo, :image
  belongs_to :card
  mount_uploader :audo, AudioUploader
end
