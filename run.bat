@echo off
chcp 65001 >nul
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 (
  echo [错误] 未找到 python，请先安装 Python 3.10（64位）并加入 PATH。
  pause
  exit /b 1
)

for /f "tokens=2 delims= " %%v in ('python --version 2^>^&1') do set PYVER=%%v
echo 当前 Python: %PYVER%
echo 本程序字节码由 Python 3.10 编译，请务必使用 3.10.x
echo.

if not exist "runs_detect\yolov8s_mirror_v14_no_earlystop\weights\best.pt" (
  echo [错误] 缺少 YOLO 模型文件，请检查 runs_detect 目录。
  pause
  exit /b 1
)
if not exist "lstm_runs_fine\best_lstm_fine.pt" (
  echo [错误] 缺少 LSTM 模型文件，请检查 lstm_runs_fine 目录。
  pause
  exit /b 1
)

echo 正在启动 AI-SOP ...
python "ai_sop_gui.pyc"
if errorlevel 1 (
  echo.
  echo [提示] 若启动失败，请先执行: python -m pip install -r requirements.txt
  pause
)
