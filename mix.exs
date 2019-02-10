defmodule Ccbx.MixProject do
  use Mix.Project

  def project do
    [
      app: :ccbx,
      version: "0.0.1",
      elixir: "~> 1.7",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      source_url: "https://github.com/anthonyfalzetti/ccbx",
      description: "A Church Community Builder api client for Elixir",
      package: package(),
      docs: docs(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [# These are the default files included in the package
      name: :ccbx,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Anthony Falzetti"],
      links: %{"GitHub" => "https://github.com/anthonyfalzetti/ccbx"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end


  # Docs
  defp docs() do
    [
      name: "Ccbx",
        source_url: "https://github.com/anthonyfalzetti/ccbx",
        homepage_url: "http://YOUR_PROJECT_HOMEPAGE",
        docs: [
          main: "Ccbx", # The main page in the docs
          extras: ["README.md"]
        ]
     ]
  end
end
