# PaaS

## Test environment

- [paas-app](https://paas-app-aw26i256sa-ez.a.run.app)

## Prod environment

- [paas-app](https://paas-app-bw2xookxra-ez.a.run.app)

## Tips

```shell
gcloud auth login
gcloud config set project static-hosting-385113
```

## Local dev

Install the [recommended VS Code workspace extensions](https://code.visualstudio.com/docs/editor/extension-marketplace#_workspace-recommended-extensions). Use the [Marp VS Code extension](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) to preview your changes live.

### Building

Install the [Marp CLI](https://www.npmjs.com/package/@marp-team/marp-cli) with: `brew install marp-cli`

Then: **⇧⌘B** in VS Code. The output will be in the `build` folder.
