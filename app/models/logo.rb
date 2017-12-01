class Logo < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    belongs_to :order, optional: true
	has_many :order_items
  belongs_to :category, optional: true
  # default_scope { where(active: true) }
    def self.search(name)
      if name
        where('name LIKE ?', "%#{name}%")
      else
        all
      end
    end
end
