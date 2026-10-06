cask "rekord" do
  version "1.8.3"
  sha256 "1c73c7976563064ab0e0bbb61fb7f2e543c9d4d2009fde853960584a011320ce"

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
