defmodule Test.Mixfile do
  use Mix.Project

  def project do
    [ app: :test,
      version: "0.0.1",
      elixir: "~> 1.0",
      build_embedded: Mix.env == :prod,
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { Test, [] },
     applications: [:logger]]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [{:exrm, "~> 1.0.0-rc5"}, {:conform, github: "bitwalker/conform"}]
  end
end
