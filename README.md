# Homebrew Tap

## AnywhereDo

```bash
brew tap monkey0803/tap
brew trust monkey0803/tap          # Homebrew 7+ 需要显式信任第三方 tap
brew install --cask anywheredo
```

这一步 `brew trust` 是新版 Homebrew 的安全策略：非官方 tap 里的 cask 必须显式信任后才会被加载，
否则会报 `Refusing to load cask … from untrusted tap`。

macOS 菜单栏小工具：选中一段文字，卡片直接贴在选区正下方给出可点的建议。

- 项目主页：<https://github.com/Monkey0803/anywheredo>
- English README：<https://github.com/Monkey0803/anywheredo/blob/main/README_EN.md>

安装后首次使用划词需要授予**辅助功能**权限（系统设置 → 隐私与安全性 → 辅助功能）。

卸载并清理配置：

```bash
brew uninstall --cask anywheredo --zap
```
