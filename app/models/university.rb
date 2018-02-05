class University < ApplicationRecord
    mount_uploader :avatar, AvatarUploader

    validates_presence_of   :avatar
    validates_integrity_of  :avatar
    validates_processing_of :avatar
end
