class User < ActiveRecord::Base
has_and_belongs_to_many :fights
mount_uploader :picture, PictureUploader



validates :first_name,  presence: true, length: { maximum: 50 }
validates :last_name,  presence: true, length: { maximum: 50 }
validates :description,  length: { maximum: 140 }
validates :midichlorians, presence: true,  numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
validates :level, presence: true,  numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
validates :lightsaber, presence: true,  numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
validates :force, presence: true


end
