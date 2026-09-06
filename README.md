# SuKoYa Tablet Workbench v0.1

面向 Android 平板 + Termux 的本地网页版多语言代码工作台。不是 VS Code，也不依赖 VS Code 扩展。

## 功能

- 本地网页 IDE：`127.0.0.1:8787`
- Monaco Editor，本地安装，不依赖 CDN
- 平板触控布局 + 小屏抽屉侧栏
- 文件树、新建、重命名、删除、保存、多标签页
- Python / JavaScript / TypeScript / C / C++ / Rust / Go / Java / Shell 本地运行
- HTML 本地预览
- DeepSeek AI 侧边栏
- DeepSeek API Key 保存在 `~/.tablet-workbench/config.json`，权限设为 600
- 中文 / English UI 切换
- 默认只监听 `127.0.0.1`，不会主动开放到局域网

## 平板安装（推荐）

Termux 中执行：

```bash
pkg update -y && pkg install git -y
git clone https://github.com/lovesky514514-cmd/SuKoYa-Tablet-Workbench.git
cd SuKoYa-Tablet-Workbench
chmod +x setup.sh
./setup.sh
```

安装完成后浏览器打开：`http://127.0.0.1:8787`

### 一行安装

全新 Termux 也可以直接执行：

```bash
curl -fsSL https://raw.githubusercontent.com/lovesky514514-cmd/SuKoYa-Tablet-Workbench/main/install-termux.sh | bash
```

## Lite 安装

如果想先省空间：

```bash
./install.sh --lite
```

Lite 仍支持 Python / JS / TS / C / C++ / Shell；之后可补装：

```bash
pkg install rust golang openjdk-17
```

## 启动 / 停止

```bash
./start.sh
./stop.sh
```

## 更新

```bash
git pull
npm install --omit=dev
./start.sh
```

## DeepSeek

打开右侧 AI 面板 → ⚙ → 填 API Key。默认模型为 `deepseek-v4-flash`，也可切换 `deepseek-v4-pro` 和思考模式。

## 自检

```bash
./doctor.sh
```

## 自定义工作目录或端口

```bash
WORKBENCH_DIR="$HOME/my-code" WORKBENCH_PORT=9000 ./start.sh
```
