require 'formula'

class Rtm < Formula
  homepage 'http://www.davidwaring.net/projects/rtm.html'
  url 'https://bitbucket.org/dwaring87/rtm-cli/get/tip.tar.gz'
  sha1 'c6ceb992a4a2b0eccc8db1ff807996e03bc3b46f'
  version '1.3.2'

  depends_on :python => ['rtm' => 'pyrtm']

  def install
    bin.install 'rtm'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test rtm`.
    system rtm
  end
end
