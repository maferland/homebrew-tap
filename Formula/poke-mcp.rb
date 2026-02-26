class PokeMcp < Formula
  desc "MCP server for ephemeral Claude Code session reminders"
  homepage "https://github.com/maferland/poke-mcp"
  url "https://github.com/maferland/poke-mcp.git", tag: "v1.3.0"
  license "MIT"

  depends_on "bun"
  depends_on "jq"

  def install
    system "bun", "install", "--frozen-lockfile"
    libexec.install Dir["*"]
  end

  def post_install
    system libexec/"install.sh"
  end

  def caveats
    <<~EOS
      Restart Claude Code for the MCP server and hooks to take effect.

      Tools: poke_create, poke_list, poke_snooze, poke_dismiss, poke_update, poke_resume
    EOS
  end

  test do
    cd libexec do
      system "bun", "run", "test"
    end
  end
end
