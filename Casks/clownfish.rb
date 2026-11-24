cask "clownfish" do
  version "0.6.5"
  sha256 "d8b88b99726e62cfe23e21802cc633acf8958b5abc2ee203d118cfc9d9e0a2eb"

  url "https://github.com/wispsy/clownfish/releases/download/v#{version}/Clownfish-v#{version}-macos.zip"
  name "Clownfish"
  desc "Lightweight, zero-dependency modern terminal emulator"
  homepage "https://github.com/wispsy/clownfish"

  depends_on arch: :arm64

  app "Clownfish.app"
  binary "#{appdir}/Clownfish.app/Contents/MacOS/Clownfish", target: "clownfish"

  zap trash: [
    "~/.config/clownfish",
    "~/Library/Saved Application State/tech.wispsy.clownfish.savedState",
  ]
end
