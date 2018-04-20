defmodule Sftp.Mixfile do
  use Mix.Project

  def project do
    [app: :sftp,
     version: "0.2.4",
     elixir: "~> 1.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: "A simple SFTP Elixir library",
     package: package(),
    #docs
    name: "sftp",
    source_url: "https://github.com/gialib/sftp_ex",
    docs: [main: "Sftp", # The main page in the docs
           extras: ["README.md"]]]
  end

  def application do
    [applications: [:logger, :ssh, :public_key, :crypto]]
  end

  defp deps do
    [{:mock, "~> 0.2.0", only: :test},
     {:ex_doc, "~> 0.14", only: :dev}]
  end

  defp package do
    [maintainers: ["Michael Dorman"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/gialib/sftp_ex"}]
  end
end
