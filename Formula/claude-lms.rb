class ClaudeLms < Formula
  include Language::Python::Virtualenv

  desc "Run Claude Code against local models in LM Studio"
  homepage "https://github.com/WillieCubed/claude-lms"
  url "https://github.com/WillieCubed/claude-lms/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "6c22951c73de41b79fd8a0265ff63bf4e90b0081581ff1e679637469e9595c40"
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
