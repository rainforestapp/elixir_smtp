defmodule ElixirSmtp.Mixfile do
  use Mix.Project

  def project do
    [ app: :elixir_smtp,
      version: "0.0.1",
      elixir: "~> 0.10.2-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  defp deps do
    [{:gen_smtp, "~> 0.9.0"}]
  end
end
