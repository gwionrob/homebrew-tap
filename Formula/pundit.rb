class Pundit < Formula
  desc "Weekly bulletins for Fantasy Premier League mini-leagues"
  homepage "https://github.com/gwionrob/pundit"
  url "https://registry.npmjs.org/pundit-cli/-/pundit-cli-0.1.1.tgz"
  sha256 "b42854fe5f7b50698ef54e45bd059b83a8b8ca9c78e2a58c38edfb2472b35511"
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
