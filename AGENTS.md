# AGENTS.md

READ ~/Projects/agent-scripts/{AGENTS.MD,TOOLS.MD} BEFORE ANYTHING (skip if files missing).

Repo-local notes
- Changelog: keep entries Trimmy-only—no other repos/products.
- After editing code: rebuild, test, package, relaunch (`swift build -q`, `swift test -q`, `Scripts/package_app.sh debug`, `open Trimmy.app`). For handoff, run the full reset: `pkill -f "/Users/steipete/Projects/Trimmy/Trimmy.app/Contents/MacOS/Trimmy" || true && swift build -q && swift test -q && Scripts/package_app.sh debug && open Trimmy.app`.
- Settings tabs once animated per tab (spring + `contentHeight`/`preferredHeight`); restore from pre-2025-11-19 ~18:40 commit if needed.
