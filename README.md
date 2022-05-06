# README

## Deployment instructions
1. git cloneコマンドをターミナルで実行し、ソースコードを取得します。
```
$ git clone https://github.com/yyy-muu/docker_rails.git
```

2. カレントディレクトリを、"docker_rails"に移動します。
```
$ cd docker_rails
```

3. 下記コマンドをターミナルで実行し、データベースを作成します。
```
$ docker-compose run web rails db:create
```

4. docker-compose upコマンドで、コンテナを実行します。
```
$ docker-compose up
```

5. ブラウザで下記にアクセスします。Railsサーバが問題なく起動していれば、Railsのウェルカムページが表示されます。
```
http://localhost:3000
```
