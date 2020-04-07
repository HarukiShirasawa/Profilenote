class Note < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :user, presence:true
    belongs_to :user, optional: true
end
