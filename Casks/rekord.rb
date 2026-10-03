cask "rekord" do
  version "1.3.0"
  sha256 "7fee40d6a185fa404e711f36899d2e7d7b2f68d7907315f262258b4ce2363ca9"

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
