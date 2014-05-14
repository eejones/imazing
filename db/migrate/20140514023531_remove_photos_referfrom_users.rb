class RemovePhotosReferfromUsers < ActiveRecord::Migration
  def change
    remove_reference :users, :photo
  end
end
