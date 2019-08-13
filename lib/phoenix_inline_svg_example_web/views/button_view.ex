defmodule PhoenixInlineSvgExampleWeb.ButtonView do
  use Phoenix.HTML
  use PhoenixInlineSvg.Helpers, otp_app: :phoenix_inline_svg_example

  def button() do
    ~E"""
    <button>
      Shared View Button
      <%= svg_image("exclamation", class: "button-svg") %>
    </button>
    """
  end
end
