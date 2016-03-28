# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require 'formula'

class GitXlsxTextconv < Formula
  desc ""
  homepage ""
  version "1.0.0"

  if OS.mac?
    url "https://github.com/shibukk/git-xlsx-textconv/releases/download/v" + version + "/git-xlsx-textconv_darwin_amd64.zip"
    sha256 "94764a8e2dba0864abd25bf930fbc31e4cc48c7c232b0d2eacae0495f1f0daa7"
  end

  def install
    bin.install 'git-xlsx-textconv'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test git-xlsx-textconv_darwin_amd`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
