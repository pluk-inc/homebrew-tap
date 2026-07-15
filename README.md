# Pluk Homebrew Tap

Homebrew casks for Pluk apps.

> [!IMPORTANT]
> **`markdown-preview` has moved to the official [homebrew/cask](https://formulae.brew.sh/cask/markdown-preview) repository.** The cask in this tap is deprecated. Install from the official repository instead:
>
> ```bash
> brew install --cask markdown-preview
> ```
>
> If you previously installed from this tap, migrate with:
>
> ```bash
> brew uninstall --cask pluk-inc/tap/markdown-preview
> brew untap pluk-inc/tap
> brew install --cask markdown-preview
> ```

## Casks

| Cask | Status |
|------|--------|
| [`markdown-preview`](Casks/markdown-preview.rb) | Deprecated — use [homebrew/cask](https://formulae.brew.sh/cask/markdown-preview) |

## Updates

After install, apps update themselves in-place via Sparkle. `brew upgrade --cask` will also work, but is generally redundant.
