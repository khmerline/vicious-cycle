module ProductsHelper
  def discount_price(product)
    product.price - product.price * product.discount.to_f / 100
  end
end
