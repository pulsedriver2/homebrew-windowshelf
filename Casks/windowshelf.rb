cask "windowshelf" do
  version "1.0.131"
  sha256 "4ecec738a3084ef645f5508854a7c8eb1f82640605fbb0ec8fb563a092914eb2"

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
