# If you have a ~/.cabal/bin folder:
export PATH=~/.cabal/bin:$PATH

# If you have a ~/Library/Haskell/bin folder on OS X:
export PATH=~/Library/Haskell/bin:$PATH

# ghc for OSX from website, not using brew
# Add GHC 7.10.2 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.2.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi
