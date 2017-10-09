class RemoveCategoryFromPost < ActiveRecord::Migration[5.0]
  def change
    remove_reference :posts, :category, foreign_key: true
  end
end
