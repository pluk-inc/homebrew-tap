cask "markdown-preview" do
  version "0.0.23,27"
  sha256 "6e1011adcff8bae5328ec26d3e7070d0ce2fcb4b3bf301ab432e82af1f9d7f03"

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
