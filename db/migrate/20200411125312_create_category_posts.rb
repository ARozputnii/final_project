class CreateCategoryPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :category_posts do |t|
      t.references :category, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
