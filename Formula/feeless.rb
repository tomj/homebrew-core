# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Feeless < Formula
  desc "⋰·⋰ Feeless is a Nano cryptocurrency node, wallet, tools, and Rust crate. https://feeless.dev/"
  homepage "https://feeless.dev/"
  url "https://github.com/feeless/feeless/releases/download/v0.1.11/feeless-macos-64.tar.gz"
  sha256 "fca5728024b9ae5ab633fc3cede142cd4c0c64b621df4a85a00a39046b8a9595"
  license any_of: ["Apache-2.0", "MIT"]
  bottle :unneeded
  version "0.1.11"

  def install
    bin.install "feeless"
  end

  test do
    system "#{bin}/feeless", "--help"
  end
end
