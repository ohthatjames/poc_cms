class Category < ActiveRecord::Base
  attr_accessible :name, :template

  belongs_to :template
end
