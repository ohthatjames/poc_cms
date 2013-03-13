class Template < ActiveRecord::Base
  attr_accessible :name, :content, :components
  serialize :content, JSON

  def components
    content.map do |component_options|
      klass = component_options["class"].constantize
      component = klass.new
    end
  end

  def components=(components)
    content = components.map do |component|
      {"class" => "Components::" + component}
    end
    write_attribute(:content, content)
  end

  def render(category)
    components.map do |component|
      component.render(category)
    end.join("\n").html_safe
  end
end
