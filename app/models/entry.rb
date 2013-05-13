class Entry < ActiveRecord::Base
  mount_uploader :question, PictureUploader
  mount_uploader :answer, PictureUploader
  attr_accessible :title, :question, :answer, :explanation, :tags
end
