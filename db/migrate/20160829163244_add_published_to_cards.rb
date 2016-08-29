class AddPublishedToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :published, :boolean
  end
end
