# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'item_behaviour')

# Parent class of items behaviour
class ItemBehaviour
  def set_quality(item, quality)
    item.quality = quality
    item.quality = 0 if quality <= 0
    item.quality = 50 unless quality <= 50
  end

  def update_quality_pre_date_change(item)
    set_quality(item, item.quality - 1)
  end

  def decrement_sell_date(item)
    item.sell_in -= 1
  end

  def process_expired_item(item)
    set_quality(item, item.quality - 1) if item.sell_in.negative?
  end
end
