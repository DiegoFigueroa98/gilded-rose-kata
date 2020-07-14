# frozen_string_literal: true

# Child class of items behaviour
class BackstagePassBehaviour < ItemBehaviour
  def update_quality_pre_date_change(item)
    quality_increase = 1
    quality_increase = 3 if item.sell_in.positive? && item.sell_in <= 5
    quality_increase = 2 if item.sell_in > 5 && item.sell_in <= 10
    set_quality(item, item.quality + quality_increase)
  end

  def process_expired_item(item)
    set_quality(item, 0) if item.sell_in.negative?
  end
end
