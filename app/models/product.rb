class Product < ApplicationRecord
    validates :title, :type_of_product, :price, presence: { message: "Campo obrigatório" }
    validates :rating, numericality: { only_integer: true, :greater_than_or_equal_to => 0, message: "Precisa ser inteiro maior ou igual a 0" }, :allow_nil => true
    validates :price, numericality: { only_integer: true, :greater_than => 0, message: "Digite um inteiro maior que 0: as duas últimas unidades se referem aos centavos"}

    has_one_attached :photo
end
