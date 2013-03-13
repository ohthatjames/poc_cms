module Components
  class HelloWorld
    def initialize(category)
      @category = category
    end

    def render
      "<p>Hello world! This is #{@category.name}!</p>"
    end
  end
end
