class DirnotesCli < Formula
  desc "A simple neovim based notes editor, where you can take notes based on your cwd"
  homepage "https://github.com/Andrrs64/dirnotes-cli"
  url "https://github.com/Andrrs64/dirnotes-cli/archive/refs/tags/0.1.tar.gz"
  sha256 "0701e24c8dccb8aa8988e9c6d6c75616db81b7042d1c1d4331483a96af7a6590"
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
