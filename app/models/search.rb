class Search < ApplicationRecord
	has_many :questions, :dependent => :destroy
    accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

	def self.search(name)
      if name
        where('name LIKE ?', "%#{name}%")
      else
        all
      end
    end
end
