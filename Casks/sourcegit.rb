cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.22"
  sha256 arm:   "f0d3d1cceefbd94218d8ce8f6e25df42c4a2524d2bddc24bd20c8b6adc6c5538",
         intel: "640d858fc33b1064b37eb790abd2b4761ff9f6559e0d572cd32f95635d560734"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip",
      verified: "github.com/sourcegit-scm/sourcegit/"
  name "SourceGit"
  desc "Open-source Git GUI client"
  homepage "https://sourcegit-scm.github.io/"

  depends_on macos: ">= :catalina"

  app "SourceGit.app"

  zap trash: "~/Library/Application Support/SourceGit"
end
