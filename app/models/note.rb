class Note < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :user, presence:true
    belongs_to :user, optional: true
    acts_as_taggable
    
    def self.search(search)
      if search
        where(['name LIKE ?', "%#{search}%"])
      else
        all
      end
    end
end
