class CreateDrawings < ActiveRecord::Migration[7.1]
  def change
    create_table :drawings do |t|
      t.integer :mypart_id
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
