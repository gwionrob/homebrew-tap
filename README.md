# gwionrob/homebrew-tap

Homebrew formulae by [@gwionrob](https://github.com/gwionrob).

```sh
brew install gwionrob/tap/pundit
```

| Formula | Description |
| --- | --- |
| [`pundit`](https://github.com/gwionrob/pundit) | Weekly bulletins for Fantasy Premier League mini-leagues, from the terminal |

## Updating a formula

After publishing a new `pundit-cli` version to npm:

```sh
v=0.1.1
url=https://registry.npmjs.org/pundit-cli/-/pundit-cli-$v.tgz
sha=$(curl -sL "$url" | shasum -a 256 | cut -d' ' -f1)
sed -i '' -e "s#^  url .*#  url \"$url\"#" -e "s#^  sha256 .*#  sha256 \"$sha\"#" Formula/pundit.rb
git commit -am "pundit $v" && git push
```
