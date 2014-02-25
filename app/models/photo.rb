class Photo < ActiveRecord::Base

	 mount_uploader :image, ImageUploader # Tells rails to use this uploader for this model.
     validates :name, presence: true
end
