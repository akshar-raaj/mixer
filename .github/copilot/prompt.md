# Project Conventions

When working with this codebase:

1. Module Documentation
   - Do not add @moduledoc documentation to any module
   - Remove any existing @moduledoc strings
   - All modules should start directly with their code

2. Function Documentation
   - Do not add @doc documentation to any function
   - Remove any existing @doc strings
   - Functions should be defined without any documentation comments

Example of correct module format:
```elixir
defmodule Example do
  def some_function(arg) do
    # function implementation
  end
end
```

These conventions should be strictly followed when creating or modifying any Elixir code in this project.
