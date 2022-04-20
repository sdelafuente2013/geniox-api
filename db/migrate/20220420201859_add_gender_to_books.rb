class AddGenderToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :gender, :string
  end
end
