class PackingStrategyHierarchy < ApplicationRecord
  has_many :packing_strategys, class_name: "PackingStrategy", foreign_key: "packing_strategy_hierarchy_id"
end
