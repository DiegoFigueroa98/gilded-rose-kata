# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'item_behaviour')

# Child class of ItemBehaviour
class ConjuredBehaviour < ItemBehaviour
  def update_quality_pre_date_change(item)
    set_quality(item, item.quality - 2)
  end

  def process_expired_item(item)
    set_quality(item, item.quality - 2) if item.sell_in.negative?
  end
end
