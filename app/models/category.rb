class Category < ActiveRecord::Base
  attr_accessible :name, :template, :template_id

  belongs_to :template
end
