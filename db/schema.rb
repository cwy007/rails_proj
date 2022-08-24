# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_24_083250) do

  create_table "packing_strategies", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "packing_strategy_way", comment: "装箱方式"
    t.integer "theory_quantity", comment: "理论装箱数量"
    t.integer "full_auto_complete", comment: "满箱自动报工"
    t.integer "full_auto_print", comment: "满箱自动打印"
    t.integer "theory_gross_weight", comment: "理论单箱毛重"
    t.string "gross_weight_unit", comment: "毛重单位"
    t.integer "full_net_weight", comment: "理论单箱净重"
    t.string "net_weight_unit", comment: "净重单位"
    t.integer "assignee_type", comment: "装箱派发类型 1人 2组 3设备"
    t.bigint "packing_strategy_hierarchy_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["packing_strategy_hierarchy_id"], name: "index_packing_strategies_on_packing_strategy_hierarchy_id"
  end

  create_table "packing_strategy_hierarchies", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.boolean "published"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users_roles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "packing_strategies", "packing_strategy_hierarchies"
end
