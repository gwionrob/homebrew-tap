class Pundit < Formula
  desc "Weekly bulletins for Fantasy Premier League mini-leagues"
  homepage "https://github.com/gwionrob/pundit"
  url "https://registry.npmjs.org/pundit-cli/-/pundit-cli-0.1.0.tgz"
  sha256 "dada536d5cf343d1937b1bafdfc671a10fbf888a08aa7c6239a2d34e5eb9d762"
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
