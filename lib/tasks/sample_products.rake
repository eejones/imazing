namespace :db do
#run rake db:populateproducts to run
  desc "Erase and fill database"
  task :populateproducts => :environment do
    require 'populator'
    require 'faker'
    
    [Product].each(&:delete_all)
    
    1000.times do |t|
      @modality = Modality.first(:offset => rand(1..19))
      mymods = @modality.modtypes.count
      @modtype = @modality.modtypes.first(:offset => rand(mymods))
      mymanufs = @modtype.manufacturers.count
      @manufacturer = @modtype.manufacturers.first(:offset => rand(mymanufs))
      @overallcategory = Overallcategory.find_by_id(rand(1..2))
      Product.populate 1..2 do |product|
        product.serial = rand(1000000) 
        product.condition = "Good" 
        product.country = "United States" 
        product.price = rand(400000) 
        product.user_id = 2
        product.year = rand(1990..2014) 
        product.dealertype = rand(1..2) 
        product.hospitaltype = rand(1..2) 
        product.orthopedictype = rand(1..2) 
        product.imagingcentertype = rand(1..2) 
        product.drofficetype = rand(1..2) 
        product.urgenttype = rand(1..2) 
        product.painmanagementtype = rand(1..2) 
        product.veterinarytype = rand(1..2) 
        product.chiropractictype = rand(1..2) 
        product.podiatrytype = rand(1..2) 
        product.dentaltype = rand(1..2)
        product.manufacturer_id = @manufacturer.id
        product.modtype_id = @modtype.id
        product.modality_id = @modality.id
        product.overallcategory_id = @overallcategory.id
        product.manufacturer_name = @manufacturer.name
        product.modtype_name = @modtype.name
        product.modality_name = @modality.name
        product.overallcategory_name = @overallcategory.name
        product.created_at = 2.years.ago..Time.now
        product.availabilitydate = 2.years.ago..Time.now
        product.listedon = 2.years.ago..Time.now
      end
    end
  end
end
