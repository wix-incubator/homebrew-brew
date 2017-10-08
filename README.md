Wix Homebrew Tap
=====================

This is a [Homebrew][brew] tap for formulae for software developed by Wix.


Setup
-----

Using these formulae requires Homebrew, which in turn requires Xcode. If you
have not yet installed Homebrew, a quick summary is at the end of this
document.

Once homebrew is installed, simply run:

    brew tap wix/brew

These formulae require OS X 10.12 (Sierra) or higher.


Use
---

To install software, just use `brew install` with the name of the formula. You
may wish to run `brew update` before hand to get the latest version of the
formulae. For example, to install the latest version of the Apple simulator utilities:

    brew update
    brew install wix/brew/applesimutils

To upgrade software:

    brew update
    brew upgrade    # upgrade all software installed with Homebrew
    brew upgrade applesimutils   # update just applesimutils


Contributing
------------

Please file bug reports and feature requests as GitHub issues against the individual project, not this repository—however, we do accept pull requests here.

To do development on these formulae, first fork the repository on GitHub. Add
your fork as a remote to your local clone:

    cd $(brew --prefix)/Library/Taps/wix/homebrew-brew
    git remote add me git@github.com:YOUR_GITHUB_USERNAME/homebrew-brew.git
    git fetch me

To propose changes, push to your fork (e.g. with `git push me +master`) and
submit pull request on GitHub.

We follow Homebrew's [standard coding style][style].


References
----------
`brew help`, `man brew`, or the Homebrew [documentation][].

[brew]: http://brew.sh/
[style]: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
[documentation]: https://github.com/Homebrew/homebrew/tree/master/share/doc/homebrew#readme
