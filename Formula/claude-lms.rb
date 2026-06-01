class ClaudeLms < Formula
  include Language::Python::Virtualenv

  desc "Run Claude Code against local models in LM Studio"
  homepage "https://github.com/WillieCubed/claude-lms"
  url "https://github.com/WillieCubed/claude-lms/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d075866eaa773802bda9dac1f2190066ab7b7bfa10fd57876c5d575811a5530b"
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
