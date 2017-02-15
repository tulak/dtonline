class AddDescToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :desc, :string
  end
end
