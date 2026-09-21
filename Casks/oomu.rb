cask "oomu" do
  version "0.2.14"
  sha256 "21e365f165c2b69e4156188630ef90b677fd2ee51143d7b6ebfa0e8e5c2ac503"

  url "https://r2.oomu.ai/releases/v#{version}/OOMU_#{version}_aarch64.dmg"
  name "OOMU"
  desc "Private AI workstation for Apple Silicon"
  homepage "https://oomu.ai"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "OOMU.app"

  zap trash: [
    "~/Library/Application Support/ai.eldris.oomu.gpd*",
    "~/Library/Caches/ai.eldris.oomu.gpd*",
    "~/Library/Caches/oomu",
    "~/Library/Preferences/ai.eldris.oomu.gpd*.plist",
    "~/Library/Saved Application State/ai.eldris.oomu.gpd*.savedState",
  ]
end
