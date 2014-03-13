require 'formula'

class Sparkey < Formula
  homepage 'https://github.com/spotify/sparkey'
  url 'https://github.com/spotify/sparkey.git'

  depends_on 'snappy' => :build

  def install
    system 'autoreconf --install'
    system './configure'
    system 'make'
    system 'make install'
  end
end