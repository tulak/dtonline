class AddPerexToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :perex, :string
  end
end
