# docker-nginx-proxy

## これはなに
docker コンテナ上に nginx を使った SSL, LDA　に対応したプロキシサーバを構築してくれるものです。
主に開発環境の構築に docker を使い複数サービスの開発をする際に、
ヴァーチャルホスト名によってアプリケーションを区別させるような用途で使うイメージです。

## 実行環境
下記環境で動作確認しています。
* Docker 18.05.0-ce
* docker-compose version 1.21.2

## 使用方法
1. ソースを clone してくる
    * `git clone git@github.com:IkezoeMakoto/docker-nginx-proxy.git`
1. ディレクトリ移動
    * `cd docker-nginx-proxy`
1. サービス起動
    * `make up`
1. 設定ファイル編集(必要に応じて)
    ```
    cp proxy/nginx/conf.d/vhost.conf.example proxy/nginx/conf.d/your-service.conf
    vi proxy/nginx/conf.d/your-service.conf
    ```
1. 設定ファイルを反映
    * `make rerun`

## 注意事項
基本的にこのサービスで起動されたコンテナが proxy サーバとして起動するように設計しているので、 apache や nginx がデフォルトで起動しているとポートが被って起動できないことがあります。
