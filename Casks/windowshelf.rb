cask "windowshelf" do
  version "1.0.99"
  sha256 "e345bb307e709152b350826ebb156e44a4af50bb1603bd16ce48c4729a2264f4"

  url "https://windowshelf.app/WindowShelf.dmg"
  name "WindowShelf"
  desc "Native macOS sidebar for organizing, switching, and managing open windows"
  homepage "https://windowshelf.app/"

  livecheck do
    url "https://windowshelf.app/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :ventura"

  app "WindowShelf.app"

  zap trash: [
    "~/Library/Preferences/com.simatik.WindowShelf.plist",
    "~/Library/Caches/com.simatik.WindowShelf",
  ]
end
