# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'aged_brie_behaviour')
require File.join(File.dirname(__FILE__), 'backstage_pass_behaviour')
require File.join(File.dirname(__FILE__), 'sulfuras_behaviour')
require File.join(File.dirname(__FILE__), 'conjured_behaviour')
require File.join(File.dirname(__FILE__), 'item_behaviour')

# This class will identify the behaviour of the items
class BehaviourIdentifier
  def obtain_behaviour(item)
    return AgedBrieBehaviour.new if item.name == 'Aged Brie'
    return SulfurasBehaviour.new if item.name == 'Sulfuras, Hand of Ragnaros'
    return BackstagePassBehaviour.new if item.name == 'Backstage to a TAFKAL80ETC concert'
    return ConjuredBehaviour.new if item.name == 'Conjured Mana Cake'

    return ItemBehaviour.new
  end
end
