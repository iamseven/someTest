# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180712070713) do

  create_table "DestinyAchievementDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyActivityDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyActivityGraphDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyActivityModeDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyActivityModifierDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyActivityTypeDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyBondDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyChecklistDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyClassDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyDamageTypeDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyDestinationDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyEnemyRaceDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyEquipmentSlotDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyFactionDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyGenderDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyHistoricalStatsDefinition", primary_key: "key", force: :cascade do |t|
    t.binary "json"
  end

  add_index "DestinyHistoricalStatsDefinition", ["key"], name: "sqlite_autoindex_DestinyHistoricalStatsDefinition_1", unique: true

  create_table "DestinyInventoryBucketDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyInventoryItemDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyItemCategoryDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyItemTierTypeDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyLocationDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyLoreDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyMaterialRequirementSetDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyMedalTierDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyMilestoneDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyObjectiveDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyPlaceDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyPlugSetDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyProgressionDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyProgressionLevelRequirementDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyRaceDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyReportReasonCategoryDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyRewardSourceDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinySackRewardItemListDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinySandboxPerkDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinySocketCategoryDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinySocketTypeDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyStatDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyStatGroupDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyTalentGridDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyUnlockDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyVendorDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "DestinyVendorGroupDefinition", force: :cascade do |t|
    t.binary "json"
  end

  create_table "dapis", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
