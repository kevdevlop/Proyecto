class Product < ApplicationRecord
  enum size: [:s, :m, :l]
  enum gender: [:man, :woman, :kid]
  validates :name, :price, :size, :gender, presence: true
  after_create :create_product_category

  def check_reduced
    if self.off_sale && (self.percent_discount)
      percent = self.percent_discount/100.to_d
      p "---------#{percent}------"
      if percent > 0.0
        reduced_price = self.price - (percent * self.price)
        p "---------#{self.reduced_price}------"
        self.update!(reduced_price: reduced_price)
      end
    end
  end

  private
  def create_product_category
    category = case self.gender
               when 'man' then Category.find_by_name("Hombres")
               when 'woman' then Category.find_by_name("Mujeres")
               when 'kid' then Category.find_by_name("Niños")
               end
    if ProductCategory.create(category: category, product: self)
      p "------- producto_categoria creada--------"
    else
      p "------- error al crear producto_categoria --------"
    end
  end

end
