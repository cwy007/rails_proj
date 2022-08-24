class CreatePackingStrategyHierarchies < ActiveRecord::Migration[6.1]
  def change
    create_table :packing_strategy_hierarchies do |t|
      t.string :name, comment: '装箱策略层级名称'

      t.timestamps
    end
  end
end
