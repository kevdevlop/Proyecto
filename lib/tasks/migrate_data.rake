namespace :migrate_data do
  desc "Config all data"
  task all: []

  desc "Actualizar todos los prodcutos con los nuevos campos"
  task update_products_new_data: :environment do
    products = Product.all
    products.each do |p|
      if p.update!(is_new: true, off_sale: false, like_puntuation: 0)
        p "update product success #{p.id}"
      else
        p "error on update #{p.id}"
      end
    end
  end
end