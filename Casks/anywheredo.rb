cask "anywheredo" do
  version "1.0.0"
  sha256 "0982fbe8618c06cde51742094511d187e94e23676de378f8dc531ce1936b26a1"

  url "https://github.com/Monkey0803/anywheredo/releases/download/v#{version}/AnywhereDo-#{version}-universal.zip",
      verified: "github.com/Monkey0803/anywheredo/"
  name "AnywhereDo"
  desc "Selection-triggered suggestion popup for macOS"
  homepage "https://github.com/Monkey0803/anywheredo"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AnywhereDo.app"

  zap trash: "~/Library/Application Support/AnywhereDo"

  caveats <<~EOS
    AnywhereDo needs Accessibility permission to read the text you select:

      System Settings → Privacy & Security → Accessibility → enable AnywhereDo

    It takes effect within 3 seconds, no restart needed.
    AnywhereDo 需要「辅助功能」权限才能读取选区，授权后 3 秒内自动生效。
  EOS
end
