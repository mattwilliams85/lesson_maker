class Tables < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :name, :varchar
      t.column :content, :varchar

      t.timestamps
    end
  end
end
