defmodule PhoenixInlineSvgExampleWeb.ButtonView do
  use Phoenix.HTML
  import PhoenixInlineSvg.Helpers

  def button() do
    ~E"""
    <button>
      Shared View Button
      <%= svg_image(PhoenixInlineSvgExampleWeb.Endpoint, "exclamation", class: "button-svg") %>
    </button>
    """
  end
end
