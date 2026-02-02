class Mosox < Formula
  desc "LP matrix generator for GMPL"
  homepage "https://github.com/carderne/mosox"
  url "https://github.com/carderne/mosox/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "470e83aef795ad466f3b34ec3cdc7d288e8512dfb8a2a0ba37172370a3ac65e2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mosox --version")
  end
end
