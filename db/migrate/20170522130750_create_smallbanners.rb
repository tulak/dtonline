class CreateSmallbanners < ActiveRecord::Migration[5.0]
  def change
    create_table :smallbanners do |t|
      t.string :image
      t.timestamps
    end
  end
end
