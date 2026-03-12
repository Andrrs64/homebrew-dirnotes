class Dirnotes < Formula
  desc "A simple neovim based notes editor, where you can take notes based on your cwd"
  homepage "https://github.com/Andrrs64/homebrew-dirnotes"
  url "https://github.com/Andrrs64/homebrew-dirnotes/archive/refs/tags/0.2.tar.gz"
  sha256 "b2edc382de1fa6f3c9ad80f27f06037b51726e06301742f444a52aab97d6e502"
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
