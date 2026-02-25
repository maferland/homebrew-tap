class PokeMcp < Formula
  desc "MCP server for ephemeral Claude Code session reminders"
  homepage "https://github.com/maferland/poke"
  url "https://github.com/maferland/poke.git", tag: "v1.2.1"
  license "MIT"

  depends_on "bun"
  depends_on "jq"

  def install
    cd "poke-mcp" do
      system "bun", "install", "--frozen-lockfile"
      libexec.install Dir["*"]
    end
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
