cask "markdown-preview" do
  version "0.0.17,21"
  sha256 "a7a6bf30fccfb4d17447abc37f464baa9d025360e48ad764e525bd3b8e38a01a"

  url "https://cdn.amore.computer/releases/doc.md-preview/#{version.csv.first}-#{version.csv.second}/Markdown-Preview.dmg",
      verified: "cdn.amore.computer/releases/doc.md-preview/"
  name "Markdown Preview"
  desc "Markdown previewer with bundled Quick Look extension"
  homepage "https://md-preview.app/"

  livecheck do
    url "https://storage.md-preview.app/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Markdown Preview.app"

  zap trash: [
    "~/Library/Application Scripts/doc.md-preview",
    "~/Library/Caches/doc.md-preview",
    "~/Library/Containers/doc.md-preview",
    "~/Library/HTTPStorages/doc.md-preview",
    "~/Library/Preferences/doc.md-preview.plist",
  ]
end
