class CreateMyparts < ActiveRecord::Migration[7.1]
  def change
    create_table :myparts do |t|
      t.integer :algo_id
      t.string :title

      t.timestamps
    end
  end
end
