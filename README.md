# PhoenixInlineSvgExample

## Steps to reproduce compile-time error with phoenix_inline_svg

1. `rm -rf priv/static/svg/`
2. `mix deps.compile phoenix_inline_svg --force`
3. `mix phx.server`

    ```
    == Compilation error in file lib/phoenix_inline_svg_example_web/views/button_view.ex ==
    ** (CompileError) lib/phoenix_inline_svg_example_web/views/button_view.ex:9: undefined function svg_image/2
        (elixir) src/elixir_locals.erl:98: :elixir_locals."-ensure_no_undefined_local/3-lc$^0/1-0-"/2
        (elixir) src/elixir_locals.erl:99: anonymous fn/3 in :elixir_locals.ensure_no_undefined_local/3
        (stdlib) erl_eval.erl:680: :erl_eval.do_apply/6
        (elixir) lib/kernel/parallel_compiler.ex:229: anonymous fn/4 in Kernel.ParallelCompiler.spawn_workers/7
    ```

This error can be resolved by copying over the svgs into /priv/static

1. `cp -avr assets/static/svg priv/static`
2. `mix phx.server`


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
