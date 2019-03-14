### 備考
Pengwin の README.md を翻訳したものです。
現在の翻訳は、d98d300b6ee79c909747dee26be432032e5031ef を元に作成されています。新しい翻訳に追従や翻訳の修正に関する Pull Request をお待ちしています。

# Pengwin
Pengwin は最初の WSL 用に最適化された Debian® ベースの Linux® ディストリビューションで、オープンソースソフトウェアスタートアップ [Whitewater Foundry](https://whitewaterfoundry.com) で誕生しました。

（企業ユーザーの方は、 [Pengwin Enterprise](https://github.com/WhitewaterFoundry/WLE) もご覧ください。）


<img src='https://github.com/WhitewaterFoundry/Screenshots/raw/master/ezgif.com-gif-maker.gif'>

<a href='//www.microsoft.com/store/apps/9NV1GV1PXZ6P?ocid=badge'><img src='https://assets.windowsphone.com/85864462-9c82-451e-9355-a3d5f874397a/English_get-it-from-MS_InvariantCulture_Default.png' alt='Store badge' height=50/></a>

- [English](README.md)
- [简体中文](README.zh-hans.md)
- [繁體中文](README.zh-hant.md)

[![Twitter Follow](https://img.shields.io/twitter/follow/espadrine.svg?label=Follow&style=social)](https://twitter.com/PengwinApp)
[![VK Follow](https://img.shields.io/badge/VK-Pengwin-4c75a3.svg)](https://vk.com/Pengwin)
[![LINE Follow](https://img.shields.io/badge/LINE-Pengwin-00c300.svg)](https://line.me/R/ti/p/%40yck9322o)
[![Telegram](https://img.shields.io/badge/Telegram-wslinux-0088cc.svg)](https://t.me/wslinux)


## 機能

- Pengwin は Microsoft Research によって考案されたオープンソーステクノロジーと、Debian プロジェクトによって収集された Linux エコシステム上に構築された Windows10 向けの Linux 環境です。
- また、Pengwin は、Microsoft が Windows 10 及び Windows Server 2019 上で提供する機能である [Windows® Subsystem for Linux](https://github.com/sirredbeard/Awesome-WSL) 向けに、事前構成と最適化が行われた最初の Linux ディストリビューションです。
- Pengwin には WSL と Windows 10 間の対話のためのオープンソースユーティリティ集である [wslu](https://github.com/wslutilities/wslu) が含まれています。
- `$ Pengwin-setup` からアクセスできる Pengwin-setup ツールを利用して、ユーザーは下記の設定を行えます。
    - 言語及びキーボードの設定
    - シェルの追加: csh、 zsh ( [oh-my-zsh](https://ohmyz.sh/) を含む )、 および [fish](https://fishshell.com/) ( [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) を含む )
    - テキストエディタの選択: [emacs](https://www.gnu.org/software/emacs/)、 [neovim](https://neovim.io/)、および [Visual Studio Code](https://code.visualstudio.com/)
    - 開発環境の展開: [NodeJS](https://nodejs.org/) ( n 、 npm 、 yarn を含む )、 Python 3.7 ( pip を含む )、 [Ruby](http://www.ruby-lang.org/) ( rbenv を含む )、 [Rust](https://www.rust-lang.org/) ( rustup インストーラ経由 )、および [Go](https://golang.org/)
    - [PowerShell](https://github.com/PowerShell/PowerShell) および Azureのコマンドラインツールである [azure-cli](https://github.com/Azure/azure-cli) による Microsoft Windows と Azure の管理
    - Windows Explorer のシェル拡張の有効化/無効化
    - 実験的な GUI の設定: Linux アプリケーション向けの [Windows 10 theme](https://github.com/B00merang-Project/Windows-10) や HiDPI サポート、および CJK 言語の入力
    - Windows 上で動作する Docker へのセキュアなアクセスの作成
- Pengwin では [多くの一般的な Linux のグラフィカルアプリケーション](https://github.com/ethanhs/WSL-Programs) について、ディスプレイの設定と libGL の設定が不要です。 ( グラフィカルアプリケーションの動作には Windows 上で動作する [X410](http://afflnk.microsoft.com/c/1291904/459838/7593?prodsku=9NLP712ZMN9Q&u=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fstore%2Fp%2Fx410%2F9NLP712ZMN9Q) 等の X クライアントが必要です。)
- apt パッケージマネージシステムを用いて、[拡張 Debian リポジトリ](https://packages.debian.org/testing/) および Debian 向けのサードパーティリポジトリから、27,790以上のオープンソースパッケージをインストール可能です。
- Pengwin は WSL で利用可能な他の主要 Linux ディストリビューション よりも早く、 WSL 依存のバグに対するパッチが提供されます。
- Systemd 等、いくつかの不要なパッケージは、イメージサイズの縮小と安定性の向上のため、ベースのイメージからは削除されています。
- 今後も、コミュニティからのフィードバックに基づいて新しい機能を開発していきます。それらの詳細は [開発中の機能 (英語)](https://github.com/WhitewaterFoundry/Pengwin/pulls) や、 [コミュニティの投稿 (英語)](https://github.com/WhitewaterFoundry/Pengwin/issues) をご確認ください。また、Pengwin では開発の奨励金制度を用意しております。詳細については [earn paid grants (英語)](CONTRIBUTING.md) をご確認ください。

注：上記の機能は、現在 Microsoft Store でリリースされている version 1.1.28 に基づいていおります。ご自身で、 Pengwin のビルドを行い、最新の機能のテストやデバッグに貢献することも可能です。

## サポートについて

Microsoft Store での Pengwin の売り上げは、新機能の追加・テスト・リリースや WSL に関するセキュリティの検証、ユーザーサポートに充てられます。
ユーザーサポートはベストエフォート形式で行われます。問題が発生した場合は、次の手順を試みてください。

- まず、[Pengwin Issues page (英語)](https://github.com/whitewaterfoundry/Pengwin/issues) をご確認ください。
- 次に、[General WSL Issues page (英語)](https://github.com/Microsoft/WSL/issues) をご確認ください。
- さらに、 Microsoft が公式で提供する [Troubleshooting Windows Subsystem for Linux (英語)](https://docs.microsoft.com/en-us/windows/wsl/troubleshooting) をご確認ください。
- 上記の手順で問題の解決が見られない場合は、[bug report](https://github.com/WhitewaterFoundry/Pengwin/issues/new?template=bug_report.md) に投稿してください。我々が最善を尽くして問題の解決にあたります。我々は多くの問題について、おおむね数時間で返信しております。お手数をおかけしますが、ご了承のほどよろしくお願いいたします。


## 他の Pengwin に関する資料

- [LICENSE.md](LICENSE.md)
- [BUILDING.md](BUILDING.md)
- [PRIVACY.md](PRIVACY.md)
- [ROADMAP.md](ROADMAP.md)
- [CONTRIBUTING.md](CONTRIBUTING.md)

## 関係資料

- [Awesome Windows Subsystem for Linux](https://github.com/sirredbeard/Awesome-WSL)
- [Awesome UNIX](https://github.com/sirredbeard/Awesome-UNIX)
- [wslu](https://github.com/wslutilities/wslu)

## メンバー

### 主要メンバー

- [Hayden Barnes](https://github.com/sirredbeard)
- [Patrick Wu](https://github.com/patrick330602)
- [Carlos Rafael Ramirez](https://github.com/crramirez)
- [Kim Bradley](https://github.com/grufwub)

### コントリビュータ

- [Andrew Fehr](https://github.com/ThatWeirdAndrew)

### テストおよびサポート

- [Jack Mangano](https://thechipcollective.com/)
- [Nuno do Carmo](http://wslcorsair.blogspot.com/)

<a href='//www.microsoft.com/store/apps/9NV1GV1PXZ6P?ocid=badge'><img src='https://assets.windowsphone.com/85864462-9c82-451e-9355-a3d5f874397a/English_get-it-from-MS_InvariantCulture_Default.png' alt='Store badge' height=50/></a>
