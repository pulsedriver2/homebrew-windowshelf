cask "windowshelf" do
  version "1.0.133"
  sha256 "156f2971ad9c0e37fdd5b169cb8d529c60b5b49defdba10d6c5a167d9813c614"

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
