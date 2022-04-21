class CreateJoinTableAuthorsBooks < ActiveRecord::Migration[6.1]
  def change
    create_join_table :authors, :books, column_options: { null: false, foreign_key: true } do |t|
      t.index [:author_id, :book_id]
      t.index [:book_id, :author_id]
    end
  end
end
