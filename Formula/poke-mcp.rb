class PokeMcp < Formula
  desc "MCP server for ephemeral Claude Code session reminders"
  homepage "https://github.com/maferland/poke-mcp"
  url "https://github.com/maferland/poke-mcp.git", tag: "v1.3.0"
  license "MIT"

  depends_on "oven-sh/bun/bun"
  depends_on "jq"

  def install
    system "bun", "install", "--frozen-lockfile"
    libexec.install Dir["*"]
  end

  def caveats
    <<~EOS
      Run the installer to register the MCP server and hooks:

        #{libexec}/install.sh

      Tools: poke_create, poke_list, poke_snooze, poke_dismiss, poke_update, poke_resume
    EOS
  end

  test do
    cd libexec do
      system "bun", "run", "test"
    end
  end
end
