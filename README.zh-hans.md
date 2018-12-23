# WLinux

专门为 Windows 10 Linux® 子系统调整的 Linux® 发行版，基于 Debian®，由 [Whitewater Foundry](https://whitewaterfoundry.com) 出品。

<a href='//www.microsoft.com/store/apps/9NV1GV1PXZ6P?ocid=badge'><img src='https://assets.windowsphone.com/42e5aa4a-f19a-4205-9191-a97105ed7663/Chinese_Simplified_get-it-from-MS_InvariantCulture_Default.png' alt='Chinese badge' height=50/></a>

- [English](EADME.md)
- [繁體中文](README.zh-hant.md)
- [日本語](README.ja.md)

## 功能

- WLinux 是第一款使用 Microsoft Research 开源技术基于 Debian 发行版的 Windows 10 Linux 子系统发行版。
- WLinux 是第一款专门为开发者和资深用户设计的在 [Windows 10 Linux 子系统](https://github.com/sirredbeard/Awesome-WSL)(WSL) 上运行的 Linux 开发环境。
- 预装 [wslu](https://github.com/wslutilities/wslu), 一款专门为WSL而设计的工具组。
- `$ wlinux-setup`协助你配置你的 Linux 到你最喜欢的样子：
    - 修改你的 WLinux 语言设置。
    - 可选的 terminal shells: csh, zsh (带 [oh-my-zsh](https://ohmyz.sh/))或者 [fish](https://fishshell.com/) (带 [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish))。
    - 可选的文字编辑器: [emacs](https://www.gnu.org/software/emacs/), [neovim](https://neovim.io/) 或者 [Visual Studio Code](https://code.visualstudio.com/)。
    - 安装你最喜爱的开发环境: [NodeJS](https://nodejs.org/) (n，npm和/或yarn), Python 3.7 (带pip), [Ruby](http://www.ruby-lang.org/) (通过rbenv )与 [Go](https://golang.org/)。
    - 用这些工具来管理你的 Windows 和 Azure: [PowerShell](https://github.com/PowerShell/PowerShell) 和 [azure-cli](https://github.com/Azure/azure-cli)。
    - 开启/关闭 Windows 文件管理器右键菜单支持。
    - 配置 WSL 的 GUI 设置，包括高分辨率支持和 CJK 输入法支持。
    - 支持 Docker 桥的创建。
- 支持大部分的 [GUI 应用](https://github.com/ethanhs/WSL-Programs)! 注：需要安装 Windows 下的X服务器，如 [X410](http://afflnk.microsoft.com/c/1291904/459838/7593?prodsku=9NLP712ZMN9Q&u=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fstore%2Fp%2Fx410%2F9NLP712ZMN9Q)。
- WLinux 提供与其他 WSL 支持的发行版相比更快的 Bug 修复。
- 一些不必要或者不支持的应用如`systemd`已被移除。
- 我们会基于[社区反馈](https://github.com/WhitewaterFoundry/WLinux/issues)不断的开发[新功能](https://github.com/WhitewaterFoundry/WLinux/pulls)。还有，[我们的 WLinux 赏金计划](CONTRIBUTING.md)了解一下。

注：以上功能为最新的商店版本更新内容。你也可以自行编译WLinux来帮我们测试新功能。

## 支持

WLinux 在商店的购买可以是独立的开源开发者们能够持续的开发，测试和调整 WLinux。我们尝试为您提供最好的用户服务。大部分问题可以通过以下方法解决。

- 请先[在此](https://github.com/sirredbeard/WLinux/issues)搜索你的问题。
- 如果找不到，请在[ WSL 反馈页](https://github.com/Microsoft/WSL/issues)搜索你的问题。
- 你也可以查看微软官方的[ WSL 故障排除](https://docs.microsoft.com/en-us/windows/wsl/troubleshooting)档案。
- 如果你无法找到你的问题，请[开一个新的 issue](https://github.com/WhitewaterFoundry/WLinux/issues/new?template=bug_report.md). 我们通常会在几个小时内回复你，请您耐心等待。

## 其他文档

- [LICENSE.md](LICENSE.md)
- [BUILDING.md](BUILDING.md)
- [PRIVACY.md](PRIVACY.md)
- [ROADMAP.md](ROADMAP.md)
- [CONTRIBUTING.md](CONTRIBUTING.md)

## 相关界面

- [Awesome Windows Subsystem for Linux](https://github.com/sirredbeard/Awesome-WSL)
- [Awesome UNIX](https://github.com/sirredbeard/Awesome-UNIX)
- [wslu](https://github.com/wslutilities/wslu)

## 开发团体

### 核心团队

- [Hayden Barnes](https://github.com/sirredbeard)
- [Patrick Wu](https://github.com/patrick330602)
- [Carlos Rafael Ramirez](https://github.com/crramirez)
- [Kim Bradley](https://github.com/grufwub)

### 贡献者

- [Andrew Fehr](https://github.com/ThatWeirdAndrew)

### 测试/QA

- [Jack Mangano](https://thechipcollective.com/)
- [Nuno do Carmo](http://wslcorsair.blogspot.com/)