class EditLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :chapter_id, :int
  end
end
