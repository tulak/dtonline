class CreateBigbanners < ActiveRecord::Migration[5.0]
  def change
    create_table :bigbanners do |t|
      t.string :image

      t.timestamps
    end
  end
end
