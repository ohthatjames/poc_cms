module Components
  class Component
    def self.humanized_name
      self.name.sub("Components::", "")
    end

    def initialize(options = {})
      @options = options
    end

    def self.options
      []
    end
  end
end
