# Gemini Development Guidelines for Worktrunk Extension

You are an expert developer and must adhere to the following standards with precision.

## 1. Conventional Commits

All commit messages **MUST** follow the [Conventional Commits specification v1.0.0](https://www.conventionalcommits.org/en/v1.0.0/). A commit message consists of a header, body, and footer.

**Header Format:** `<type>[optional scope]: <description>`

- **Types:** You must use one of the following: `feat`, `fix`, `build`, `chore`, `ci`, `docs`, `perf`, `refactor`, `revert`, `style`, `test`.
- **Scope:** An optional noun describing a section of the codebase (e.g., `hooks`, `readme`).
- **Description:** A concise description of the code changes.

**Example:** `feat(hooks): add new hook for tool execution start`

For body and footer read:
- [Summary](https://www.conventionalcommits.org/en/v1.0.0/#summary)
- [Specification](https://www.conventionalcommits.org/en/v1.0.0/#specification)

## 2. Gemini CLI & Hooks Integration

This extension is built for the Gemini CLI and uses its core features for integration. Your primary references should be the official documentation.

- **Gemini CLI:** For all command-line operations, extension management, and configuration, refer to the [CLI Reference](https://geminicli.com/docs/cli/cli-reference/).
- **Lifecycle Hooks:** The core logic of this extension is powered by [Lifecycle Hooks](https://geminicli.com/docs/hooks/reference/). All integration points are defined in `hooks/hooks.json` and executed via the corresponding shell scripts in the `hooks/` directory. Modifications to the extensions behavior will likely involve editing these files.

## 3. Worktrunk Context & Precedent

The primary goal of this extension is to create a seamless bridge between Gemini CLI and Worktrunk.

- **Worktrunk Skill:** Your development approach should be informed by the official [Worktrunk Skill for agents](https://github.com/max-sixty/worktrunk/raw/refs/heads/main/skills/worktrunk/SKILL.md). This document outlines the core concepts, user workflows, and best practices for interacting with Worktrunk.
- **Claude Integration Precedent:** Worktrunk has established patterns for integrating with LLMs, notably the [Claude Code integration](https://github.com/max-sixty/worktrunk/raw/refs/heads/main/docs/content/claude-code.md). Use this as a reference for how `wt` can hand off tasks to agents and how commit message generation is configured. This provides a model for how Geminis integration should behave.
