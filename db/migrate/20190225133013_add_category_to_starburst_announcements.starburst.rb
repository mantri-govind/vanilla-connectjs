# This migration comes from starburst (originally 20141112140703)
class AddCategoryToStarburstAnnouncements < ActiveRecord::Migration[5.1]
  def change
    add_column :starburst_announcements, :category, :text
  end
end
