# frozen_string_literal: true

# Child class of ItemBehaviour
class SulfurasBehaviour < ItemBehaviour
  def update_quality_pre_date_change(item)
    return
  end

  def decrement_sell_date(item)
    return
  end

  def process_expired_item(item)
    return
  end
end
