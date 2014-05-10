class AddUnconfirmToDevise < ActiveRecord::Migration
  def self.up
     add_column :users, :unconfirmed_email, :string # Only if using reconfirmable
    # User.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # users as confirmed, do the following
    # All existing user accounts should be able to log in after this.
  end

  def self.down
    remove_columns :users, :unconfirmed_email # Only if using reconfirmable
  end
end
