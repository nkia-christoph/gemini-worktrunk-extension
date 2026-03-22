# Worktrunk Status Extension for Gemini CLI

This is a lightweight extension that integrates your Gemini CLI sessions with your [Worktrunk](https://worktrunk.dev/) workflow.

Its purpose is simple: to give you real-time, at-a-glance visibility into your agents activity directly from your terminal.

## Installation
```bash
# install worktrunk (Linux & macOS)
brew install worktrunk && wt config shell install

# install gemini extension
gemini extensions install https://github.com/christophkroeppl/gemini-worktrunk-extension
```
Check [wt docs](https://worktrunk.dev/worktrunk/#install) for more installation options.

## What does it do?

It uses custom markers to show you exactly which worktree your Gemini agent is operating in, and what its doing.

### Features

- **💬 Session Active:** As soon as you start a Gemini session in a worktree, a `💬` marker appears next to the branch in your `wt list` output.
- **🤖 Agent Working:** The marker automatically changes to a `🤖` icon whenever Gemini is busy thinking or executing a tool (like running a command or searching files).
- **💨 Clean Exit:** The marker is instantly removed when your session ends, leaving your worktree clean.

This is perfect for developers who juggle multiple worktrees and want a clear, visual way to track where their AI assistant is working.

## How It Works

This extension leverages the **Lifecycle Hooks** feature of Gemini CLI. Its a pure, simple, shell-based integration that runs scripts to call `wt config state marker` at different stages of the Gemini session. No complex dependencies, no fuss.

## [Tips & Patterns](https://worktrunk.dev/tips-patterns/)

Practical recipes for common Worktrunk workflows. A great one is creating an alias for creating a new worktree and launching an agent in one command.

**Example Alias:**

```bash
# Create a worktree and launch Gemini in one command
alias wsg=wt switch --create --execute=gemini

# Usage:
wsg new-feature                         # Creates worktree, runs hooks, launches Gemini
wsg feature -- -y -p `Fix GH #322`    # Runs `gemini` in yolo mode with prompt: `Fix GH #322`
```
