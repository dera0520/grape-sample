class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :code
      t.string :title

      t.timestamps
    end
  end
end
