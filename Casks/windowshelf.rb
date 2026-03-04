cask "windowshelf" do
  version "1.0.58"
  sha256 "7619fedcf98607a92303b226dcd407eef1d1ec072de6fa91675854b97fe7d7cf"

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
