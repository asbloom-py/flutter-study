# Study for Flutter

## ⚙️ Prepare
Cloneした後,下記の設定を行う.

### git hooks
```bash
// Cloneしたディレクトリで実行
$ git config --local core.hooksPath .githooks
```
### fvm
[flutterのバージョン管理ツール](https://fvm.app/)
[インストール方法 ~Standalone~](https://fvm.app/docs/getting_started/installation#:~:text=FVM%20by%20running-,Install,-brew%20tap%20leoafarias)

#### stableのインストール
fvmがインストール出来たら,fvmを使ってflutterの特定のバージョンをインストールする.

```bash
$ fvm install stable
```

#### stableの使用
```bash
$ fvm use stable
```

### Vs code
VS codeの設定変更.
下記の内容をコピーして,`.vscode/settings.json`に保存する.
保存したらVscodeを再起動する.

```json
{
  // Remove .fvm files from search
  "search.exclude": {
    "**/.fvm": true
  },
  // Remove from file watching
  "files.watcherExclude": {
    "**/.fvm": true
  },
  "dart.flutterSdkPath": "./.fvm/flutter_sdk",
  "editor.codeActionsOnSave": {
    "source.organizeImports": true
  }
}
```

## Getting Started
