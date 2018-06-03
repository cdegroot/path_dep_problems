defmodule Theapp.MixProject do
  use Mix.Project

  def project do
    [
      app: :theapp,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      make_env: make_env(),
      compilers: Mix.compilers ++ [:elixir_make],
      deps: deps()
    ]
  end

  def make_env do
    %{"MIX_ENV" => Atom.to_string(Mix.env),
      "MIX_LIBRARY_DIR" => "#{Mix.Project.build_path}/lib/library/priv"}
  end

  def application, do: [ extra_applications: [:logger] ]
  defp deps, do: [ {:library, path: "../library"} ]
end
