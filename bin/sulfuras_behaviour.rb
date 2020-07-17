# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'item_behaviour')

# Child class of ItemBehaviour
class SulfurasBehaviour < ItemBehaviour
  def update_quality_pre_date_change(_item);
  end

  def decrement_sell_date(_item);
  end

  def process_expired_item(_item);
  end
end
