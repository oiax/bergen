# bergen - 新城市IT講習2019のためのサンプルwebアプリ

## 稼働条件

* Lubuntu 18.04
* Ruby 2.6.3
* PostgreSQL 9.6
* Node.js 6.9
* yarn 1.0+

> 開発は macOS でも構わない。

## インストール方法

```text
$ cp config/skel/database.yml config/
$ bundle install
$ yarn install
```

## `master.key` の入手

https://github.com/oiax/bergen/wiki/Credentials の節「config/master.key」にある
32桁の16進数をコピーして、新規ファイル `config/master.key` に貼り付ける。

## ユーザの新規作成

```text
$ createuser -dP bergen
```


## データベースの作成

```text
$ bin/rails db:create
```
