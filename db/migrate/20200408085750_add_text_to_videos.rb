class AddTextToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :text, :string,null: false
  end
end
