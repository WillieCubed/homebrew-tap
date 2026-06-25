class DiskJanitor < Formula
  desc "Stop git worktrees duplicating build artifacts; sweep junk on a schedule"
  homepage "https://github.com/WillieCubed/disk-janitor"
  url "https://github.com/WillieCubed/disk-janitor/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9fb87d49d85126854dbeb75355de8aa7e97844cfc142ba544e5723eb521eec5b"
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
