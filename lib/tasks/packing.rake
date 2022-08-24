# rails packing:createPackingStrategy
namespace :packing do
  desc "init create PackingStrategy"
  task :createPackingStrategy => :environment do
    if PackingStrategyHierarchy.all.empty?
      3.times do |i|
        PackingStrategyHierarchy.create({ name: "装箱层级#{i + 1}"})
      end
      print "装箱层级 3 created"
    end


    if PackingStrategy.all.empty?
      PackingStrategyHierarchy.all.each_with_index do |item, index|
        6.times do |ii|
          PackingStrategy.create({
            name: "#{item.name}-装箱策略-#{ii+1}",
            packing_strategy_way: rand(0..1),
            theory_quantity: rand(100..200),
            full_auto_complete: rand(0..1),
            full_auto_print: rand(0..1),
            theory_gross_weight: rand(100..200),
            gross_weight_unit: ['kg', 'g', 't'].sample,
            full_net_weight: rand(100..200),
            net_weight_unit: ['kg', 'g', 't'].sample,
            assignee_type: rand(1..3),
            packing_strategy_hierarchy_id: item.id,
          })
        end
        print "装箱策略 6 created"
      end
    end
  end
end
