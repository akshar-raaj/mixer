## Purpose

This project is built to learn the Elixir concepts.

We are interested in learning the following:
- Elixir basics
- Mix build tool
- Ecto
- Oban
- Testing Framework

## Structure

It's a `Hello World` kind of application built with Elixir.

`lib/hello` contains the different modules.

Examples:
- lib/hello/hello.ex
- lib/hello/hola.ex
- lib/hello/polls/poll.ex

And several others.

Unit tests are in `test/` folder.

## Guidelines

- Treat it as a learning project
- While discussing any advanced Elixir concept, make it beginner friendly.

### Documentation Guidelines

- Make additions to `README.md` if we learn and build a new concept
- But, and it's **important**, do not add module docstrings to modules and tests. I want to avoid seeing the documentation and instead pay full attention to actual code.

### Testing Guidelines

- Add unit tests whenever we add a module
- Add unit tests whenever we add a function
- Strive for 100% Test coverage

### Execution Guidelines

Do not attempt executing any `Elixir` or `Mix` commands, as we run these under a Docker container. So attempting them in the current directory will invariably fail.

### Version Control Guidelines

- After building something, if I say "Good to go", then add the files to version control.
- Think of a relevant Git commit message and commit the changes.
- Push the changes to remote


