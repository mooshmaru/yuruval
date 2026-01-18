
# Pythonのバージョン（Antigravityの環境に合わせる。3.10〜3.12推奨）
FROM python:3.11

# 作業ディレクトリの設定
WORKDIR /app

# appフォルダの中身をコンテナ内の /app にコピー
# （記事の構成通り、GitHubのルートにappフォルダがある場合）
COPY app/ .

# 依存関係（ライブラリ）のインストール
RUN pip install --no-cache-dir -r requirements.txt

# ポートを開ける（KoyebとUptimeRobot用）
# Pythonでウェブサーバーを立てるポート番号（例: 8080）
EXPOSE 8080

# アプリの起動コマンド
# "main.py" の部分は実際のあなたのファイル名に変えてください
CMD ["python", "main.py"]
