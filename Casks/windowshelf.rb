cask "windowshelf" do
  version "1.0.71"
  sha256 "6358b41d3d04a7ec94331fba14f0c5102cc262732886068356585a82e912565a"

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
