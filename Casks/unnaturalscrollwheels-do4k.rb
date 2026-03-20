cask "unnaturalscrollwheels-do4k" do
  version "1.3.3"
  sha256 "2c4083b6515e70dbe37b655a6b3d4d4a18e63a19978582d1de31750476437815"

  url "https://github.com/do4k/UnnaturalScrollWheels/releases/download/#{version}/UnnaturalScrollWheels-#{version}.dmg"
  name "UnnaturalScrollWheels (do4k)"
  desc "Tool to invert scroll direction for physical scroll wheels (do4k fork)"
  homepage "https://github.com/do4k/UnnaturalScrollWheels"

  depends_on macos: ">= :catalina"

  conflicts_with cask: "unnaturalscrollwheels"

  uninstall quit: "com.theron.UnnaturalScrollWheels"

  app "UnnaturalScrollWheels.app"

  zap trash: [
    "~/Library/Application Scripts/com.theron.UnnaturalScrollWheels",
    "~/Library/Containers/com.theron.UnnaturalScrollWheels",
  ]
end
