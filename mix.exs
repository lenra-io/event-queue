defmodule EventQueue.MixProject do
  use Mix.Project

  def project do
    [
      app: :event_queue,
      version: "0.2.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:honeydew, "~> 1.5.0"},
      {:ex_doc, "~> 0.22", only: :dev, runtime: false},
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end
end
