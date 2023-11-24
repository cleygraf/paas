# Presentation as a Service

A project to show a high-level end-to-end demo of the GitLab platform.

## Local dev

1. Install the [recommended VS Code workspace extensions](https://code.visualstudio.com/docs/editor/extension-marketplace#_workspace-recommended-extensions).
1. Run `npm install`.
1. Use the [Marp VS Code extension](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) to preview your changes live.

### Building

Install the [Marp CLI](https://www.npmjs.com/package/@marp-team/marp-cli) with: `brew install marp-cli`

Then: **⇧⌘B** in VS Code. The output will be in the `build` folder.

## Modifying slides

Slides can be find at ./src/slides.md, images go to ./assets/. 

With a local install of `mdl` you can run linting locally to speed up development.

`mdl --style all -i -r ~MD004,~MD009,~MD013,~MD025,~MD032,~MD041,~MD033,~MD002,~MD026,~MD035,~MD024,~MD034,~MD007,~MD031,~MD029,~MD036 --warnings .` 
