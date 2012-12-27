class Message < ActiveRecord::Base
  attr_accessible :audio, :image
  belongs_to :card

  # mount_uploader :audio, AudioUploader
  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioUploader

  validates_presence_of :audio, :image
end
