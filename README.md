# Homebrew Tap

## AnywhereDo

```bash
brew tap monkey0803/tap
brew install --cask anywheredo
```

若报 `Refusing to load cask … from untrusted tap`：这是新版 Homebrew 的安全策略——非官方 tap 里的 cask
必须显式信任后才会被加载，执行下面两行即可（旧版 Homebrew 没有 `trust` 命令，也不需要这一步）：

```bash
brew trust monkey0803/tap
brew install --cask anywheredo
```

macOS 菜单栏小工具：选中一段文字，卡片直接贴在选区正下方给出可点的建议。

- 项目主页：<https://github.com/Monkey0803/anywheredo>
- English README：<https://github.com/Monkey0803/anywheredo/blob/main/README_EN.md>

安装后首次使用划词需要授予**辅助功能**权限（系统设置 → 隐私与安全性 → 辅助功能）。

> 本 App 未做 Apple 公证，Homebrew 会把下载物的隔离标记传播到安装后的 App，
> 首次打开若被 Gatekeeper 拦住（「无法验证开发者」/「已损坏」），请**右键 → 打开**，
> 或执行 `xattr -dr com.apple.quarantine /Applications/AnywhereDo.app`。

卸载并清理配置：

```bash
brew uninstall --cask anywheredo --zap
```
