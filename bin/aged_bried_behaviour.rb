# frozen_string_literal: true

# Subclass of item behaviour
class AgedBriedBehaviour < ItemBehaviour
  def update_quality_pre_date_change(item)
    set_quality(item, item.quality + 1)
  end

  def process_expired_item(item) 
    set_quality(item, item.quality + 1) if item.sell_in.negative?
  end
end

