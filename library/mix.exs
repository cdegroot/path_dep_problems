defmodule Library.MixProject do
  use Mix.Project

  def project do
    [
      app: :library,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      make_env: make_env(),
      compilers: Mix.compilers ++ [:elixir_make]
    ]
  end

  def make_env do
    %{}
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:elixir_make, "~> 0.4", runtime: false}]
  end
end
