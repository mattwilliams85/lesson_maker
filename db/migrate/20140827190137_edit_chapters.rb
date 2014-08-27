class EditChapters < ActiveRecord::Migration
  def change
      add_column :chapters, :number, :int
  end
end
