module Components
  class RandomText < Component

    def self.options
      ["text"]
    end

    def render(category)
      "<p>Here's the text you wanted: #{@options["text"]}</p>"
    end
  end
end
