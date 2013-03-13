module Components
  class HelloWorld < Component
    def render(category)
      "<p>Hello world! This is #{category.name}!</p>"
    end
  end
end
