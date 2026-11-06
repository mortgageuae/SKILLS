# My Claude Code skills

The skills and plugins I use in every Claude Code session.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/mortgageuae/skills/main/install.sh | bash
```

This copies the skills in [`skills/`](skills/) into `~/.claude/skills/`, adds Anthropic's document skills (docx, pdf, pptx, xlsx) from their source, and installs the plugins below. It is safe to run again to update. For Claude Code on the web, use the same command as the environment's setup script.

## Skills

30 skills in [`skills/`](skills/):

- From [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) (Apache 2.0): artifacts-builder, brand-guidelines, canvas-design, changelog-generator, competitive-ads-extractor, connect, connect-apps, content-research-writer, developer-growth-analysis, domain-name-brainstormer, file-organizer, image-enhancer, internal-comms, invoice-organizer, langsmith-fetch, lead-research-assistant, mcp-builder, meeting-insights-analyzer, raffle-winner-picker, skill-creator, skill-share, slack-gif-creator, tailored-resume-generator, theme-factory, twitter-algorithm-optimizer, video-downloader, webapp-testing.
- gmail-automation and slack-automation, from the same repo's history (commit `99e2a29`). They need Composio's Rube MCP server (`https://rube.app/mcp`).
- karpathy-guidelines, from [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills) (MIT).

Each skill keeps its original license; check its folder.

## Plugins

Installed from their own marketplaces:

| Plugin | Source |
|---|---|
| slack | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official) |
| ui-ux-pro-max | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| impeccable | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| taste-skill | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| ponytail | [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) |
| caveman | [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) |
