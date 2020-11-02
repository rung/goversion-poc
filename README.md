# goversion-poc

## What's this
- go versionコマンドの使用例です

## 試し方
```
# Dockerfile内でGoのビルドを実施
#  (go build --ldflags="-w -s" .)
docker build -t goversion-poc .

# go version -m コマンドの実行結果確認
docker run -it goversion-poc go version -m /go/bin/hello
```

## 実行結果
```
# 依存ライブラリが表示される
/go/bin/hello: go1.15.3
	path	github.com/rung/goversion-poc
	mod	github.com/rung/goversion-poc	(devel)
	dep	github.com/pkg/errors	v0.9.1	h1:FEBLx1zS214owpjy7qsBeixbURkuhQAwrK5UwLGTwt4=
```
