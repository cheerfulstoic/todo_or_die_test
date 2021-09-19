defmodule TodoOrDieTest.Repo do
  use Ecto.Repo,
    otp_app: :todo_or_die_test,
    adapter: Ecto.Adapters.Postgres
end
