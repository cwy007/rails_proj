class CreatePackingStrategies < ActiveRecord::Migration[6.1]
  def change
    create_table :packing_strategies do |t|
      t.integer :packing_strategy_way, comment: '装箱方式'
      t.integer :theory_quantity, comment: '理论装箱数量'
      t.integer :full_auto_complete, comment: '满箱自动报工'
      t.integer :full_auto_print, comment: '满箱自动打印'
      t.integer :theory_gross_weight, comment: '理论单箱毛重'
      t.integer :gross_weight_unit, comment: '毛重单位'
      t.integer :full_net_weight, comment: '理论单箱净重'
      t.integer :net_weight_unit, comment: '净重单位'
      t.integer :assignee_type, comment: '装箱派发类型 1人 2组 3设备'
      t.references :packing_strategy_hierarchy, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
