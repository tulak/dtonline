class AddSideToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :side, :boolean
  end
end
