cask "rekord" do
  version "1.8.5"
  sha256 "9820515cd377429ea8a4721080f66e0c761daa7760370a86e747b4d54fb01ea1"

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
