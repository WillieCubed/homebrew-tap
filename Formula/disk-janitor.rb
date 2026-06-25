class DiskJanitor < Formula
  desc "Stop git worktrees duplicating build artifacts; sweep junk on a schedule"
  homepage "https://github.com/WillieCubed/disk-janitor"
  url "https://github.com/WillieCubed/disk-janitor/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e45e056f66c397c341ee7bfd0a3c093759c6a97f147cb20e45c0400497082dc9"
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
