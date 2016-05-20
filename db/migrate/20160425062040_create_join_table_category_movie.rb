class CreateJoinTableCategoryMovie < ActiveRecord::Migration
  def change
    create_join_table :categories, :movies do |t|
      # t.index [:category_id, :movie_id]
      # t.index [:movie_id, :category_id]
    end
  end
end
