# SuKoYa Tablet Workbench v0.2

面向 Android 平板 + Termux 的本地网页版多语言代码工作台。不是 VS Code，也不依赖 VS Code 扩展。

## v0.2 重点

- 横屏 Edge 优先布局：左文件树 / 中间编辑器 / 右侧 DeepSeek
- 全亮色蓝白 UI，不再使用黑色主界面
- 编辑器字号提升到 18px，行高 28px，按钮与触控区域同步放大
- Monaco Editor 语法高亮、自动补全、JS / TS 内置诊断
- Python / C / C++ / Rust / Go / Java / Shell 接入 Termux 本地语法诊断
- Problems 状态栏显示问题数量、当前语言、行列位置
- DeepSeek 侧栏加入黄发小女孩助手，并带轻微摇晃动画
- PWA 支持，可在 Edge 中添加到主屏幕，以独立窗口运行
- 默认仍只监听 `127.0.0.1`

## 支持语言

Python / JavaScript / TypeScript / C / C++ / Rust / Go / Java / Shell / HTML / CSS / JSON / Markdown 等。

## 平板首次安装

Termux 中执行：

```bash
pkg update -y && pkg install git -y
git clone https://github.com/lovesky514514-cmd/SuKoYa-Tablet-Workbench.git
cd SuKoYa-Tablet-Workbench
chmod +x setup.sh
./setup.sh
```

浏览器打开：

```text
http://127.0.0.1:8787
```

## 已安装 v0.1 的用户升级 v0.2

```bash
cd ~/SuKoYa-Tablet-Workbench
./stop.sh
git pull
npm install --omit=dev
./start.sh
```

如果 Edge 仍显示旧界面，刷新一次或关闭旧标签页后重新打开 `http://127.0.0.1:8787`。

## 一行安装

```bash
curl -fsSL https://raw.githubusercontent.com/lovesky514514-cmd/SuKoYa-Tablet-Workbench/main/install-termux.sh | bash
```

## Lite 安装

```bash
./install.sh --lite
```

Lite 仍支持 Python / JS / TS / C / C++ / Shell；之后可补装：

```bash
pkg install rust golang openjdk-17
```

## DeepSeek

右侧 AI 面板 → ⚙ → 填 API Key。Key 保存在 Termux 本机：

```text
~/.tablet-workbench/config.json
```

## PWA 安装

在 Android Edge 打开工作台后，使用浏览器菜单中的“添加到手机 / 安装此站点 / 添加到主屏幕”（名称可能因版本略有不同），即可像 App 一样从桌面启动。

## 启动 / 停止

```bash
./start.sh
./stop.sh
```

## 自检

```bash
./doctor.sh
```

## 自定义工作目录或端口

```bash
WORKBENCH_DIR="$HOME/my-code" WORKBENCH_PORT=9000 ./start.sh
```
