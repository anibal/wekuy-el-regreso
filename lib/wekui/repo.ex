defmodule Wekui.Repo do
  use AshSqlite.Repo,
    otp_app: :wekui

  # Let Ash wrap write actions in a transaction, so a multi-step action
  # rolls back as a unit. Requires a non-zero `busy_timeout`, which the
  # driver sets by default.
  @impl true
  def write_transactions?, do: true

  # Matches the SQLite bundled with exqlite.
  @impl true
  def min_sqlite_version, do: %Version{major: 3, minor: 54, patch: 1}
end
