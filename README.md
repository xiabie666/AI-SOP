# AI-SOP 行为分析系统（可运行发行版）

> 本仓库提供 **可运行发行包**（`.pyc` 字节码 + 模型权重），**不提供 Python 源码**。  
> 演示与讲解：[B站视频](https://b23.tv/GT7J9VR)  
> 技术支持 / 落地咨询：`XiaBie6666`

面向装配工位的步骤识别、顺序约束、漏步告警与截图留档。

---

## 环境要求

| 项 | 要求 |
| ---- | ---- |
| 系统 | Windows 10 / 11（64 位） |
| **Python** | **必须 3.10.x（64 位）**（与本仓库 `.pyc` 编译版本一致） |
| 显卡 | 可选；有 NVIDIA 可加速 |

确认版本：

```bash
python --version
```

应为 `Python 3.10.x`。

---

## 安装依赖

在本目录打开终端：

```bash
python -m pip install -r requirements.txt
```

有 NVIDIA 显卡时，建议先装 CUDA 版 PyTorch，再装其余依赖：

```bash
python -m pip install torch==2.2.2 torchvision==0.17.2 --index-url https://download.pytorch.org/whl/cu121
python -m pip install -r requirements.txt
```

---

## 启动

双击 `run.bat`，或：

```bash
python ai_sop_gui.pyc
```

---

## 目录说明（发行版）

```text
.
├─ ai_sop_gui.pyc          # 主程序（字节码）
├─ run.bat                 # 一键启动
├─ requirements.txt        # 依赖
├─ 背景图片.jpg
├─ video/                  # 演示视频
├─ runs_detect/            # YOLO 权重
├─ lstm_runs_fine/         # 时序模型权重
└─ docs/                   # 说明图片
```

---

## 使用说明

1. 点击「导入视频」选择录像（可用 `video/mirror_demo_01.mp4`）  
2. 按需调整阈值等参数  
3. 点击「开始分析」查看步骤进度与证据截图  

---

## 说明

- 本发行版 **不含源代码与训练脚本**。  
- `.pyc` 与 Python 小版本绑定，请使用 **3.10**。  
- 产线对接（PLC / MES / 业务库）、定制工位与授权部署请私信联系。

**版权所有 · 未经授权禁止二次倒卖与破解传播**
