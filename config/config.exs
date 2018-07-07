# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :selfexam,
  ecto_repos: [Selfexam.Repo]

# Configures the endpoint
config :selfexam, SelfexamWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vTk1EJxy6GagRoZq7S48DfKbiR57m8SKj9o8U7YjojNeYXew1LgujRjK0PGsFfbY",
  render_errors: [view: SelfexamWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Selfexam.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
