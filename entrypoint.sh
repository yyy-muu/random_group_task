#!/bin/bash

# エラーが発生したらスクリプトを中止する
set -e

# 前回起動時のRailsサーバプロセスidを削除する
rm -f /myapp/tmp/pids/server.pid

# DockerfileのCMDを実行
exec "$@"