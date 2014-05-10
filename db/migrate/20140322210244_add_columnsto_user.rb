class AddColumnstoUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :company, :string
    add_column :users, :phonecountrycode, :string
    add_column :users, :officephone, :string
    add_column :users, :mobilephone, :string
    add_column :users, :anonymous, :boolean
    add_column :users, :address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_reference :users, :message, index:true
    add_reference :users, :product, index:true
    add_reference :users, :transaction, index:true
    add_column :users, :dealertype, :boolean
    add_column :users, :hospitaltype, :boolean
    add_column :users, :orthopedictype, :boolean
    add_column :users, :imagingcentertype, :boolean
    add_column :users, :drofficetype, :boolean
    add_column :users, :urgenttype, :boolean
    add_column :users, :painmanagementtype, :boolean
    add_column :users, :veterinarytype, :boolean
    add_column :users, :chiropractictype, :boolean
    add_column :users, :podiatrytype, :boolean
    add_column :users, :dentaltype, :boolean
    add_column :users, :userlevel, :integer

  end
end
