#rspec ./spec/html_generator_spec.rb

class HTMLGenerator
  def initialize(layout = nil)
    @layout = layout || "CONTENT"
  end

  def section(x)
   layout("<section>#{x}</section>")
  end

  def unordered_list(items)
    layout("<ul>" + items.map { |i| "<li>#{i}</li>"}.join + "</ul>")
  end

  def button(but, button_class=nil)
    layout(if button_class == nil
    "<button>#{but}</button>"
    else
      "<button class='#{button_class[:class]}'>#{but}</button>"
    end)
  end

 private

  def layout(inner_html)
  @layout.gsub("CONTENT", inner_html)
  end
end












