class CopyPriceToLines < ActiveRecord::Migration
  def up
    LineItem.all.each do |line_item|
      line_item.price = Product.find(line_item.product).price
      line_item.save!
      logger.info line_item.price
    end
  end

  def down
  end
end
