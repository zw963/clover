class Shared::Footer < BaseComponent
  def render
    footer class: "footer mt-auto py-3 bg-light" do
      div class: "container" do
        span "CloverApp", class: "text-muted"
      end
    end
  end
end
