class Cart < ApplicationRecord
    has_many :cartitems,dependent: :destroy
    has_many :cartiitems_products, through: :cartitems,source: :product
end
