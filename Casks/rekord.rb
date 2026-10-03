cask "rekord" do
  version "1.1.0"
  sha256 "798efca6968814d56d26e199d927ba489ba5e2562a11e6b76c58579d9a8641ce"

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
