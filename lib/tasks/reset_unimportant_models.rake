namespace :db do
#run rake db:reset_unimportant_models to run
  desc "Sequentially clears out the models I don't care about"
  task :reset_unimportant_models => :environment do
    puts "Clearing out the fake products"
    Product.destroy_all
    puts "Finished."
  end
end
