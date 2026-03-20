cask "unnaturalscrollwheels-do4k" do
  version "1.3.3"
  sha256 "4817427c325857e6a49832277ab933c160fd1e944886ca50a4dbf1b88660ccc3"

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
