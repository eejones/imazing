class Search < ActiveRecord::Base

def products
  @products ||= find_products
end

=begin
def manufacturers
  products.manufacturer ||= find_products
end

def modalities
  products.modality_id ||= find_products
end

def modtypes
  products.modtypes ||= find_products
end
=end

private

def find_products
  Product.find(:all, :conditions => conditions)
end

#this is only searching modality_name
def keyword_conditions
(["(products.modality_name LIKE ?", "%#{keywords}%"] || ["products.modtype_name LIKE ?", "%#{keywords}%"] || ["products.manufacturer_name LIKE ?", "%#{keywords}%"]) unless keywords.blank?
#  ["products.keywords LIKE ?", "%#{keywords}%"] unless keywords.blank?
end

#def keyword_conditions
#  modality_conditions || modtype_conditions || manufacturer_conditions
#end


def modality_conditions
  ["products.modality_name LIKE ?", "%#{keywords}%"] unless keywords.blank?
end

def modtype_conditions
  ["products.modtype_name LIKE ?", "%#{keywords}%"] unless keywords.blank?
end

def manufacturer_conditions
  ["products.manufacturer_name LIKE ?", "%#{keywords}%"] unless keywords.blank?
end

def minimum_price_conditions
  ["products.price >= ?", minimum_price] unless minimum_price.blank?
end

def maximum_price_conditions
  ["products.price <= ?", maximum_price] unless maximum_price.blank?
end

def modtype_conditions
  ["products.modtype_id = ?", modtype_id] unless modtype_id.blank?
end

def manufacturer_conditions
  ["products.manufacturer_name = ?", manufacturer_id] unless manufacturer_id.blank?
end

def modality_conditions
  ["products.modality_name = ?", modality_id] unless modality_id.blank?
end

def overallcategory_conditions
  ["products.overallcategory_id = ?", overallcategory_id] unless overallcategory_id.blank?
end

def conditions
  [conditions_clauses.join(' AND '), *conditions_options]
end

def conditions_clauses
  conditions_parts.map { |condition| condition.first }
end

def conditions_options
  conditions_parts.map { |condition| condition[1..-1] }.flatten
end

def conditions_parts
  private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
end


end
