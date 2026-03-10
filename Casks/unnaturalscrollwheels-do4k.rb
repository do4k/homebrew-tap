cask "unnaturalscrollwheels-do4k" do
  version "1.3.1"
  sha256 "PLACEHOLDER_UPDATE_AFTER_FIRST_RELEASE"

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
