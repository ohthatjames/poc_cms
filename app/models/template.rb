class Template < ActiveRecord::Base
  attr_accessible :name, :content, :components
  serialize :content, JSON

  def components
    content.map do |component_options|
      klass = component_options["class"].constantize
      component = klass.new(component_options["options"])
    end
  end

  def components=(components)
    content = components.sort_by {|k, v| k.to_i}.map do |component_hash|
      {
        "class" => "Components::" + component_hash.last["class"],
        "options" => component_hash.last["options"]
      }
    end
    write_attribute(:content, content)
  end

  def render(category)
    components.map do |component|
      component.render(category)
    end.join("\n").html_safe
  end
end
