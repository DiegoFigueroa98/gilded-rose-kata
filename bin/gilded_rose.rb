# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'behaviour_identifier')

# This class will save the items and evaluate them
class GildedRose
  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      item_behaviour = BehaviourIdentifier.new.obtain_behaviour(item)
      execute_item_methods(item_behaviour, item)
    end
  end

  def execute_item_methods(item_behaviour, item)
    item_behaviour.update_quality_pre_date_change(item)
    item_behaviour.decrement_sell_date(item)
    item_behaviour.process_expired_item(item)
  end
end
