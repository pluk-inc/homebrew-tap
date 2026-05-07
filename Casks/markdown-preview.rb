cask "markdown-preview" do
  version "0.0.18,22"
  sha256 "a8aa370b165eb81315f3aeda1ae9c46051b0eb7f5d6402ebe9eee4a3b43754e7"

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
