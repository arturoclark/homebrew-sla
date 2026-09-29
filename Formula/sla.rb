class Sla < Formula
  desc "Profile CLI for Codex and Claude Code"
  homepage "https://github.com/arturoclark/homebrew-sla"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/arturoclark/sla-binaries/releases/download/v0.1.0/sla-v0.1.0-darwin-arm64.tar.gz"
    sha256 "a92d7810ecbf4101178337d522f00da02b0d107c1bb815a0921383e7f1c93484"
  else
    url "https://github.com/arturoclark/sla-binaries/releases/download/v0.1.0/sla-v0.1.0-darwin-x64.tar.gz"
    sha256 "d8b3f33cbf400cc7a0d24d9d7143df37b0aabbfc978b06e21481482d356ac1b6"
  end

  def install
    bin.install "sla"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES.md"
  end

  def caveats
    "Run sla to start setup."
  end

  test do
    ENV["SLA_HOME"] = testpath/".sla"
    assert_match version.to_s, shell_output("#{bin/"sla"} --version")
    assert_match "sla profile list", shell_output("#{bin/"sla"} --help")
    assert_match "Run sla in an interactive terminal", shell_output((bin/"sla").to_s)
    refute_path_exists testpath/".sla"
  end
end
