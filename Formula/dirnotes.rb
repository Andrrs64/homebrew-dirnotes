class Dirnotes < Formula
  desc "A simple neovim based notes editor, where you can take notes based on your cwd"
  homepage "https://github.com/Andrrs64/homebrew-dirnotes"
  url "https://github.com/Andrrs64/homebrew-dirnotes/archive/refs/tags/0.1.tar.gz"
  sha256 "8ae1e91c3c00d39398cd12387b45069727ba481c7aac66f0db33aabb4941bed7"
  license "MIT"

  depends_on "nvim"

  def install
    bin.install "src/dirnotes.sh" => "dirnotes"
    (share/"dirnotes").install Dir("share/dirnotes/*")
  end

  test do
    system "#{bin}/dirnotes"
  end
end
