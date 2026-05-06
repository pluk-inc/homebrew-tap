cask "markdown-preview" do
  version "0.0.14,18"
  sha256 "ffa2d31ef916b6afa0e511c2baf24e980fc016b1cb36d28246248f3ab2e0fc32"

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
