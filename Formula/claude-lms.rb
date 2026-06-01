class ClaudeLms < Formula
  include Language::Python::Virtualenv

  desc "Run Claude Code against local models in LM Studio"
  homepage "https://github.com/WillieCubed/claude-lms"
  url "https://github.com/WillieCubed/claude-lms/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "620b0e9cb424f056798839d40c0e1926e187bf1692570ecf5dfd4dd0df6f08e9"
  license "MIT"
  head "https://github.com/WillieCubed/claude-lms.git", branch: "main"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage: cll", shell_output("#{bin}/cll --help")
  end
end
