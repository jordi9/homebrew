require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Rtm < Formula
  homepage ''
  url 'https://bitbucket.org/dwaring87/rtm-cli/get/tip.tar.gz'
  sha1 'c6ceb992a4a2b0eccc8db1ff807996e03bc3b46f'
  version '1.3.2'

  depends_on :python => ['rtm' => 'pyrtm']

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    # system "./configure", "--disable-debug", "--disable-dependency-tracking",
    #                     "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
    bin.install 'rtm'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test rtm`.
    system "false"
  end
end
