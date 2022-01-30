# 2020/10/14最新versionを取得
FROM golang:1.15.2-alpine
# アップデートとgitのインストール
RUN apk update && apk add git
# appディレクトリの作成
RUN mkdir -p /go/src/my_apps/post_app
# ワーキングディレクトリの設定
WORKDIR /go/src/my_apps/post_app
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/my_apps/post_app
# ホットリロード機能追加
RUN go get -u github.com/oxequa/realize
CMD ["realize", "start"]

