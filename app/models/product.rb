class Product < ApplicationRecord
    self.inheritance_column = :_type_disabled

    validates :title, :type, :price, presence: :true
    validates :rating, numericality: { only_integer: true, :greater_than_or_equal_to => 0}, :allow_nil => true
    validates :price, numericality: { only_integer: true, :greater_than => 0, message: "Type an integer greater than 0: last two numbers are cents"}

    has_one_attached :photo
end
