class ClaudeLms < Formula
  include Language::Python::Virtualenv

  desc "Run Claude Code against local models in LM Studio"
  homepage "https://github.com/WillieCubed/claude-lms"
  url "https://github.com/WillieCubed/claude-lms/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "f6c70c0a5cb91498a37d9876e89a7f2eb06596533c9005aa6acb7d385e564afb"
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
