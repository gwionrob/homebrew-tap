class Pundit < Formula
  desc "Weekly bulletins for Fantasy Premier League mini-leagues"
  homepage "https://github.com/gwionrob/pundit"
  url "https://registry.npmjs.org/pundit-cli/-/pundit-cli-0.1.2.tgz"
  sha256 "7a67d54ba4e9cf48178df716e3deaf1c2cbc443a9549dd90bf403003ab1d1939"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pundit --version")
    assert_match "Usage:", shell_output("#{bin}/pundit --help")
  end
end
