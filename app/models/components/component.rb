module Components
  class Component
    def self.humanized_name
      self.name.sub("Components::", "")
    end
  end
end
