class SearchSuggestion < ActiveRecord::Base

  def self.terms_for(prefix)
    Rails.cache.fetch(["search-terms", prefix]) do
      suggestions = where("term like ?", "#{prefix}_%")
      suggestions.order("popularity desc").limit(10).pluck(:term)
    end
  end

  def self.index_products
    Product.find_each do |product|
      index_term(product.manufacturer_name)
      index_term(product.modality_name)
      index_term(product.modtype_name)
      #index_term(product.user_name)
      #using .split(/\s+|\W/) to remove non word characters as well as spaces from the index
      product.modtype_name.split(/\s+|\W/).each { |t| index_term(t) }
      product.manufacturer_name.split(/\s+|\W/).each { |t| index_term(t) }
      #product.user_name.split(/\s+|\W/).each { |t| index_term(t) }
      product.modality_name.split(/\s+|\W/).each { |t| index_term(t) }
    end
  end


  def self.index_term(term)
    where(term: term.downcase).first_or_initialize.tap do |suggestion|
      suggestion.increment! :popularity
    end
  end

end
