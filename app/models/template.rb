class Template < ActiveRecord::Base
  attr_accessible :name, :content
  serialize :content, JSON

  def render(category)
    content.map do |component_options|
      klass = component_options["class"].constantize
      component = klass.new(category)
      component.render
    end.join("\n").html_safe
  end
end
