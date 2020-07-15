class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      itemBehaviour = BehaviourIdentifier.new.obtain_behaviour(item)
      itemBehaviour.update_quality_pre_date_change(item)
      itemBehaviour.decrement_sell_date(item)
      itemBehaviour.process_expired_item(item)
    end
  end
end
