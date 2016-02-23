class User < ActiveRecord::Base

has_and_belongs_to_many :fights
mount_uploader :picture, PictureUploader



validates :first_name,  presence: true, length: { maximum: 20 }
validates :last_name,  presence: true, length: { maximum: 20 }
validates :description,  length: { maximum: 50 }
validates :midichlorians, presence: true,  numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
validates :level, presence: true,  numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
validates :lightsaber, presence: true,  numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
validates :force, presence: true
validate  :picture_size
  
  private
  
   
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end



