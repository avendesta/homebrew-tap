cask "rekord" do
  version "1.8.1"
  sha256 "e4733558ef54509e1326ff2b98d0bdf61564cd3b0cb2e0dd4acd458489abc50f"

  url "https://github.com/avendesta/Rekord/releases/download/v#{version}/Rekord-#{version}.zip"
  name "Rekord"
  desc "Menu bar recorder for system audio and microphone on separate tracks"
  homepage "https://github.com/avendesta/Rekord"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Rekord.app"

  uninstall quit: "com.avendesta.rekord"

  zap trash: [
    "~/Library/Containers/com.avendesta.rekord",
    "~/Library/Preferences/com.avendesta.rekord.plist",
    "~/Library/Saved Application State/com.avendesta.rekord.savedState",
  ]
end
