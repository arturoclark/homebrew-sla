# SLA Homebrew tap

This public repository contains the Homebrew formula for SLA's macOS arm64 and
x64 executables. The source repository is private; the formula fetches public,
checksum-pinned release archives from
[`arturoclark/sla-binaries`](https://github.com/arturoclark/sla-binaries).

Install with:

```sh
brew tap arturoclark/sla
brew install arturoclark/sla/sla
sla
```

Homebrew installation will not start setup or create `~/.sla`. Run `sla` to
start interactive onboarding. Git must be available on `PATH` when setup runs.
The formula installs the executable and license notices without requiring Node.

For a new release, build and test both archives from a clean, tagged private
source commit. Publish an immutable release in `arturoclark/sla-binaries` and
verify anonymous downloads and SHA-256 values. Then update both architecture
URLs and checksums in `Formula/sla.rb`, ensuring Homebrew infers the new version.
Test a temporary
local tap and run `brew audit --strict arturoclark/sla/sla` and
`brew test arturoclark/sla/sla` after publication. Do not replace assets for an
existing version.
