class StoryMigration < ActiveRecord::Migration
  def change
    create_table "pages" do |t|
      t.string "content"
      t.string "option1"
      t.string "option2"
      t.integer "choice1"
      t.integer "choice2"
    end
  end
end
