class AddShorturlToUrl < ActiveRecord::Migration[5.1]
  def change
    add_column :urls, :shorturl, :string
  end
end
