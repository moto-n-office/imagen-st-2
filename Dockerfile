FROM python:3.9-slim

WORKDIR /app

# 必要なライブラリをインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションコードをコピー
COPY . .

# 直接実行する形に変更
CMD ["python", "app.py"]
