# SLA Homebrew tap

This public repository will contain the Homebrew formula for SLA's macOS
executables. The source repository is private; the formula will fetch public
release archives from
[`arturoclark/sla-binaries`](https://github.com/arturoclark/sla-binaries).

The formula has not been published yet. After it is added and verified, install
with:

```sh
brew tap arturoclark/sla
brew install arturoclark/sla/sla
sla
```

Homebrew installation will not start setup or create `~/.sla`. Run `sla` to
start interactive onboarding.
