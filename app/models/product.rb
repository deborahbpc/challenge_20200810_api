class Product < ApplicationRecord
    self.inheritance_column = :_type_disabled

    validates :title, :type, :price, presence: :true
    validates :rating, numericality: { only_integer: true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5}, :allow_nil => true
    validates :price, numericality: { only_integer: true, :greater_than => 0 }
    # validates :title, uniqueness: true

    has_one_attached :photo
end
