namespace :search_suggestions do
#run rake search_suggestions:index to populate
  desc "Generate search suggestions from products"
  task :index => :environment do
    SearchSuggestion.index_products
  end
end
