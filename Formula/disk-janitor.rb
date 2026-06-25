class DiskJanitor < Formula
  desc "Stop git worktrees duplicating build artifacts; sweep junk on a schedule"
  homepage "https://github.com/WillieCubed/disk-janitor"
  url "https://github.com/WillieCubed/disk-janitor/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "8f4a616f8f1affcf541ea6177803c11da01f6edcd7e619196c1bc53cb8719d25"
  license "MIT"
  head "https://github.com/WillieCubed/disk-janitor.git", branch: "main"

  def install
    bin.install "bin/disk-janitor"
    bash_completion.install "completions/disk-janitor.bash" => "disk-janitor"
    zsh_completion.install "completions/disk-janitor.zsh" => "_disk-janitor"
    fish_completion.install "completions/disk-janitor.fish"
    man1.install "man/disk-janitor.1"
  end

  test do
    assert_match "disk-janitor v", shell_output("#{bin}/disk-janitor version")
  end
end
